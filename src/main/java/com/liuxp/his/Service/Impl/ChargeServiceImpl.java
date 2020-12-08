package com.liuxp.his.Service.Impl;

import com.alibaba.fastjson.JSONObject;
import com.liuxp.his.Dao.*;
import com.liuxp.his.Model.JsonResult;
import com.liuxp.his.PO.*;
import com.liuxp.his.Service.ChargeService;
import com.liuxp.his.Service.InvoiceService;
import com.liuxp.his.Utils.Util;
import com.liuxp.his.VO.ChargeItemVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service
public class ChargeServiceImpl implements ChargeService {
    @Autowired
    private PatientDao patientDao;
    @Autowired
    private PatientPrescriptionDetailDao patientPrescriptionDetailDao;
    @Autowired
    private PatientCostDetailDao patientCostDetailDao;
    @Autowired
    private InvoiceDao invoiceDao;
    @Autowired
    private PatientPrescriptionDao patientPrescriptionDao;
    @Autowired
    private RegisterDao registerDao;
    @Autowired
    private DrugDao drugDao;
    @Autowired
    private UserDao userDao;

    @Override
    public JsonResult searchPatient(int patientID) {
        Patient patient = patientDao.getOne(patientID);
        if (patient != null) {
            return new JsonResult().code("0").msg("success").data(patient);
        } else {
            return new JsonResult().code("1").msg("fail");
        }
    }

    @Override
    public JsonResult chargePatient(int patientID) {
        Register register = registerDao.getChargerRegister(patientID, new Date());
        Patient patient = patientDao.getOne(patientID);
        if(register==null){
            return new  JsonResult().code("1").msg(("error"));
        }
        int registerID = register.getRegisterID();
        List<PatientPrescription> pList = patientPrescriptionDao.getAllByRegisterID(registerID);
        List<ChargeItemVO> chargeItemVOList = new ArrayList<>();
        for (PatientPrescription p : pList) {
            List<PatientPrescriptionDetail> pdList = patientPrescriptionDetailDao.getAllByPrescriptionID(p.getPatientPrescriptionID());
            for (PatientPrescriptionDetail pd : pdList) {
                if (pd.getState() == 2) {
                    //已开立项目
                    Drug drug = drugDao.getOne(pd.getDrugID());
                    User user = userDao.getOneByUserID(p.getUserID());
                    ChargeItemVO chargeItemVO = new ChargeItemVO(patient.getPatientID(), patient.getName(), drug.getDrugName(), drug.getDrugPrice(), pd.getAmount(), user.getRealName(), Util.dateTime2String(p.getCreateTime()), "已开立", p.getPatientPrescriptionID(), pd.getPatientPrescriptionDetailID());
                    chargeItemVOList.add(chargeItemVO);
                }
            }
        }
        return new JsonResult().code("0").msg("success").data(chargeItemVOList);
    }

    @Override
    public JsonResult patientCharge(JSONObject jsonObject) {
         int patientPrescriptionID =jsonObject.getInteger("patientPrescriptionID");
         int patientPrescriptionDetailID=jsonObject.getInteger("patientPrescriptionDetailID");
         patientPrescriptionDao.updateState(patientPrescriptionID,3);
         patientPrescriptionDetailDao.updateOne(patientPrescriptionDetailID,3);
        return null;
    }

    @Override
    public JsonResult refundPatient(int patientID) {
        Register register = registerDao.getChargerRegister(patientID, new Date());
        Patient patient = patientDao.getOne(patientID);
        if(register==null){
            return new  JsonResult().code("1").msg(("error"));
        }
        int registerID = register.getRegisterID();
        List<PatientPrescription> pList = patientPrescriptionDao.getAllByRegisterID(registerID);
        List<ChargeItemVO> chargeItemVOList = new ArrayList<>();
        for (PatientPrescription p : pList) {
            List<PatientPrescriptionDetail> pdList = patientPrescriptionDetailDao.getAllByPrescriptionID(p.getPatientPrescriptionID());
            for (PatientPrescriptionDetail pd : pdList) {
                if (pd.getState() == 3) {
                    //已开立项目
                    Drug drug = drugDao.getOne(pd.getDrugID());
                    User user = userDao.getOneByUserID(p.getUserID());
                    ChargeItemVO chargeItemVO = new ChargeItemVO(patient.getPatientID(), patient.getName(), drug.getDrugName(), drug.getDrugPrice(), pd.getAmount(), user.getRealName(), Util.dateTime2String(p.getCreateTime()), "已缴费", p.getPatientPrescriptionID(), pd.getPatientPrescriptionDetailID());
                    chargeItemVOList.add(chargeItemVO);
                }
            }
        }
        return new JsonResult().code("0").msg("success").data(chargeItemVOList);
    }

    @Override
    public JsonResult patientRefund(JSONObject jsonObject) {
        int patientPrescriptionID =jsonObject.getInteger("patientPrescriptionID");
        int patientPrescriptionDetailID=jsonObject.getInteger("patientPrescriptionDetailID");
        patientPrescriptionDao.updateState(patientPrescriptionID,4);
        patientPrescriptionDetailDao.updateOne(patientPrescriptionDetailID,4);
        return null;
    }
}
