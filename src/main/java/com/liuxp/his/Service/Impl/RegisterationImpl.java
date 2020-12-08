package com.liuxp.his.Service.Impl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.liuxp.his.Dao.*;
import com.liuxp.his.Model.JsonResult;
import com.liuxp.his.PO.*;
import com.liuxp.his.Service.InvoiceService;
import com.liuxp.his.Service.RegisterationService;
import com.liuxp.his.Utils.Util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import sun.security.krb5.internal.PAData;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service
public class RegisterationImpl implements RegisterationService {

    @Autowired
    private PatientDao patientDao;

    @Autowired
    private DepartmentDao departmentDao;

    @Autowired
    private InvoiceDao invoiceDao;

    @Autowired
    private RegisterDao registerDao;
    @Autowired
    private RegisterLevelDao registerLevelDao;
    @Autowired
    private UserDao userDao;
    @Autowired
    private InvoiceService invoiceService;
    @Autowired
    private PatientIndexDao patientIndexDao;
    @Override
    public JsonResult getPatient(int patientID) {
        Patient patient = patientDao.getOne(patientID);
        if (patient == null)
            return new JsonResult().code("1").msg("患者不存在");
        else{
            //检查是否重复挂号
            return new JsonResult().code("0").msg("查询成功！").data(patient);
        }
    }

    @Override
    public JsonResult getInvoiceNumber() {
        return invoiceService.getInvoiceNumber();
    }

    @Override
    public JsonResult getDeptmentList() {
        List<Department> departmentList = departmentDao.getAllDeptRegisterable();
        return new JsonResult().code("0").msg("success").data(departmentList);
    }

    @Override
    public JsonResult getRegisterLevelList() {
        List<RegisterLevel> registerLevelList = registerLevelDao.getAll();
        return new JsonResult().code("0").msg("success").data(registerLevelList);
    }

    @Override
    public JsonResult getDoctorList(int deptID, int registerLevelID) {
        List<User> userList = userDao.getAllDoctor();
        List<User> doctorList = new ArrayList<>();
        for (User user : userList) {
            if (user.getDepartmentID() == deptID && user.getRegisterLevelID() == registerLevelID)
                doctorList.add(user);
        }

        return new JsonResult().code("0").msg("success").data(doctorList);
    }

    @Override
    public JsonResult checkPatientRegisteration(int patientID, Date date) {
        List<Register> registerList = registerDao.getAllByDate(date);
        for (Register register : registerList) {
            if (register.getPatientID()==patientID && register.getDiagnoseState()!=0)
                return new JsonResult().code("1").msg("已挂号");
        }
        return new JsonResult().code("0").data(registerList);
    }

    @Override
    public JsonResult getRegisteredNumber(int doctorID, Date date) {
        int num = 0;
        List<Register> registerList = registerDao.getAllByDate(date);
        for (Register register : registerList) {
            if (register.getDoctorUserID() == doctorID)
                num++;
        }
        return new JsonResult().code("0").msg("success").data(num);
    }

    @Override
    public JsonResult register(JSONObject jsonObject) {
        Register register = json2Register(jsonObject);
        Patient patient = json2Patient(jsonObject);
        //患者是否第一次就诊
        if (patientDao.getOne(patient.getPatientID()) != null) {
            //不是第一次就诊
            patientDao.updateOne( patient);
        } else {
            //第一次就诊
            patientDao.insertOne(patient);
        }
        //更新挂号信息
        registerDao.addOne(register);
        //先写入病历
        patientIndexDao.addOne(patient.getPatientID(),register.getRegisterID());
        //更新发票
        Invoice invoice=generateInvocie(jsonObject,register.getRegisterID());
        invoiceService.addInvoice(invoice);
        return new JsonResult().code("0").msg("挂号成功！");
    }


    public Register json2Register(JSONObject jsonObject) {
        Register register = new Register();
        register.setPatientID((int) jsonObject.get("patientID"));
        register.setDiagnoseDate(Util.dateFormat((String) jsonObject.get("diagnoseDate")));
        register.setNoon(jsonObject.getString("noon"));
        register.setDeptID(jsonObject.getInteger("deptID"));
        register.setDoctorUserID(jsonObject.getInteger("doctorID"));
        register.setRegisterLevelID(jsonObject.getInteger("registerLevelID"));
        register.setBookNeeded(jsonObject.getBoolean("needed") ? 1 : 0);
        register.setRegisterTime(new Date());
        register.setRegisterUserID(jsonObject.getInteger("registerUserID"));
        register.setDiagnoseState(1);
        return register;
    }

    public Patient json2Patient(JSONObject jsonObject) {
        Patient patient = new Patient();
        patient.setPatientID(jsonObject.getInteger("patientID"));
        patient.setName(jsonObject.getString("patientName"));
        patient.setSex(jsonObject.getString("gender"));
        patient.setIdentifyID(jsonObject.getString("patientIDNumber"));
        patient.setBirth(jsonObject.getDate("birth"));
        patient.setAge(jsonObject.getInteger("age"));
        patient.setAgeType(jsonObject.getString("ageType"));
        patient.setAddress(jsonObject.getString("address"));
        patient.setCreateTime(new Date());
        return patient;
    }
    public Invoice generateInvocie(JSONObject jsonObject,int registerID){
        Invoice invoice = new Invoice();
        invoice.setInvoiceNumber(jsonObject.getInteger("invoiceNumber"));
        invoice.setInvoiceValue(jsonObject.getDoubleValue("price"));
        invoice.setChargeTime(new Date());
        invoice.setInvoiceState("1");
        invoice.setChargeUserID(jsonObject.getInteger("registerUserID"));
        invoice.setRegisterID(registerID);
        return invoice;
    }
}
