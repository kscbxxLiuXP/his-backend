package com.liuxp.his.Service.Impl;

import com.alibaba.fastjson.JSONObject;
import com.liuxp.his.Dao.*;
import com.liuxp.his.Model.JsonResult;
import com.liuxp.his.PO.*;
import com.liuxp.his.Service.DiagnoseService;
import com.liuxp.his.Utils.Util;
import com.liuxp.his.VO.DiagnoseVO;
import com.liuxp.his.VO.PatientVO;
import com.liuxp.his.VO.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service
public class DiagnoseServiceImpl implements DiagnoseService {

    @Autowired
    private PatientIndexDao patientIndexDao;

    @Autowired
    private PatientDao patientDao;

    @Autowired
    private RegisterDao registerDao;

    @Autowired
    private DiseaseDao diseaseDao;

    @Autowired
    private UserDao userDao;

    @Autowired
    private DiagnoseDao diagnoseDao;

    @Override
    public JsonResult listUntreatedPatients(int userID) {
        User user=userDao.getOneByUserID(userID);
        List<Register> registerList = new ArrayList<>();
        //管理员
        if (user.getUserTypeID()==1){
           List<Register> tmp=registerDao.getAllByDate(new Date());
           for(Register register : tmp){
               if (register.getDiagnoseState()==1)
                   registerList.add(register);
           }
        }else{
            registerList=registerDao.getAllUntreated(userID);
        }
        List<PatientVO>  patientVOList = new ArrayList<>();
        for(Register register : registerList){
            Patient patient = patientDao.getOne(register.getPatientID());
            PatientIndex patientIndex = patientIndexDao.getOneByRegisterID(register.getRegisterID());
            PatientVO patientVO = new PatientVO(patient,patientIndex);
            patientVOList.add(patientVO);

        }
        return new JsonResult().code("0").msg("success").data(patientVOList);
    }

    @Override
    public JsonResult listTreatedPatients(int userID) {
        User user=userDao.getOneByUserID(userID);
        List<Register> registerList = new ArrayList<>();
        //管理员
        if (user.getUserTypeID()==1){
            List<Register> tmp=registerDao.getAllByDate(new Date());
            for(Register register : tmp){
                if (register.getDiagnoseState()==2)
                    registerList.add(register);
            }
        }else{
            registerList=registerDao.getAllTreated(userID);
        }
        List<PatientVO>  patientVOList = new ArrayList<>();
        for(Register register : registerList){
            Patient patient = patientDao.getOne(register.getPatientID());
            PatientIndex patientIndex = patientIndexDao.getOneByRegisterID(register.getRegisterID());
            PatientVO patientVO = new PatientVO(patient,patientIndex);
            patientVOList.add(patientVO);

        }
        return new JsonResult().code("0").msg("success").data(patientVOList);

    }

    @Override
    public JsonResult getPatientIndex(int registerID) {

        PatientIndex patientIndex  =patientIndexDao.getOneByRegisterID(registerID);
        return new JsonResult().code("0").msg("success").data(patientIndex);
    }

    @Override
    public JsonResult handlePatientIndex(PatientIndex patientIndex ,int handelCode) {
        //暂存
        if (handelCode==1) {
            //存储，不设置诊断状态
            patientIndexDao.updateOne(patientIndex);
        }else if (handelCode ==2 ){
            patientIndex.setState(2);
            setDiagnosed(patientIndex.getRegisterID());
            patientIndexDao.updateOne(patientIndex);
        }
        return new JsonResult().code("0").msg("success");
    }

    @Override
    public JsonResult listDiseases() {
        List<Disease> diseases = diseaseDao.getAll();

        return new JsonResult().code("0").msg("success").data(diseases);
    }

    @Override
    public JsonResult addDiagnose(JSONObject jsonObject) {
        Diagnose diagnose = new Diagnose();
        diagnose.setPatientIndexID(jsonObject.getInteger("patientIndexID"));
        diagnose.setRegisterID(jsonObject.getInteger("registerID"));
        diagnose.setDiseaseID(jsonObject.getInteger("diseaseID"));
        diagnose.setDiagnoseType(1);
        diagnose.setDiseaseTime(Util.string2Datetime(jsonObject.getString("diseaseTime")));

        diagnoseDao.addOne(diagnose);

        return new JsonResult().code("0").msg("添加成功").data(diagnose.getDiagnoseID());
    }

    @Override
    public JsonResult getDiagnose(int registerID) {
        System.out.println(111111+registerID);
        List<Diagnose> diagnoseList = diagnoseDao.getByRegisterID(registerID);
        List<DiagnoseVO> diagnoseVOList = new ArrayList<>();
        for(Diagnose diagnose : diagnoseList){
            Disease disease = diseaseDao.getOne(diagnose.getDiseaseID());
            DiagnoseVO diagnoseVO = new DiagnoseVO(diagnose,disease);
            diagnoseVOList.add(diagnoseVO);
        }
        return new JsonResult().code("0").msg("获取成功").data(diagnoseVOList);
    }

    //
    // 设置状态为已经就诊！
    public void setDiagnosed(int registerID){
        System.out.println(registerID);
        registerDao.updateOne(registerID,2);
        patientIndexDao.updateState(registerID,2);
    }

}
