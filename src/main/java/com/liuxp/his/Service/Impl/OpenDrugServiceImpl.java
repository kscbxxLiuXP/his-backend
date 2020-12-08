package com.liuxp.his.Service.Impl;

import com.alibaba.fastjson.JSONObject;
import com.liuxp.his.Dao.*;
import com.liuxp.his.Model.JsonResult;
import com.liuxp.his.PO.*;
import com.liuxp.his.Service.OpenDrugService;
import com.liuxp.his.VO.DrugDetailVO;
import com.liuxp.his.VO.PrescriptionTemplateVO;
import com.liuxp.his.VO.PrescriptionVO;
import com.liuxp.his.VO.TemplateDetailVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service
public class OpenDrugServiceImpl implements OpenDrugService {
    @Autowired
    private PscriptTemplateDao pscriptTemplateDao;
    @Autowired
    private PscriptTemplateDetailDao pscriptTemplateDetailDao;
    @Autowired
    DrugDao drugDao;
    @Autowired
    PatientIndexDao patientIndexDao;
    @Autowired
    PatientPrescriptionDao patientPrescriptionDao;
    @Autowired
    PatientPrescriptionDetailDao patientPrescriptionDetailDao;
    @Override
    public JsonResult getPrescriptionTemplateAll() {
        List<PscriptTemplate> pscriptTemplateList = pscriptTemplateDao.getAll();
        List<PrescriptionTemplateVO> prescriptionTemplateVOList =  new ArrayList<>();
        for(PscriptTemplate pscriptTemplate:pscriptTemplateList){
            PrescriptionTemplateVO prescriptionTemplateVO = new PrescriptionTemplateVO(pscriptTemplate);
            prescriptionTemplateVOList.add(prescriptionTemplateVO);
        }

        return new JsonResult().code("0").msg("success").data(prescriptionTemplateVOList);
    }

    @Override
    public JsonResult getPrescriptionTemplateDetail(int prescriptionTemplateID) {
        List<PscriptTemplateDetail> pscriptTemplateDetailList = pscriptTemplateDetailDao.getAll(prescriptionTemplateID);
        List<TemplateDetailVO> templateDetailVOList = new ArrayList<>();
        for(PscriptTemplateDetail pscriptTemplateDetail : pscriptTemplateDetailList){
            Drug drug = drugDao.getOne(pscriptTemplateDetail.getDrugID());
            TemplateDetailVO templateDetailVO = new TemplateDetailVO(drug,pscriptTemplateDetail);
            templateDetailVOList.add(templateDetailVO);
        }
        return new JsonResult().code("0").data(templateDetailVOList).msg("success");
    }

    @Override
    public JsonResult getPatientPrescriptionList(int registerID) {
        List<PatientPrescription> patientPrescriptionList = patientPrescriptionDao.getAllByRegisterID(registerID);
        List<PrescriptionVO> prescriptionVOList = new ArrayList<>();
        for(PatientPrescription patientPrescription :patientPrescriptionList){
            PrescriptionVO prescriptionVO = new PrescriptionVO(patientPrescription);
            prescriptionVOList.add(prescriptionVO);
        }
        return new JsonResult().code("0").msg("success").data(prescriptionVOList);
    }



    @Override
    public JsonResult addPrescription(int registerID,String prescriptionName,int userID) {
        PatientPrescription patientPrescription = new PatientPrescription();
        patientPrescription.setPatientIndexID(patientIndexDao.getOneByRegisterID(registerID).getPatientIndexID());
        patientPrescription.setRegisterID(registerID);
        patientPrescription.setUserID(userID);
        patientPrescription.setPrescriptionName(prescriptionName);
        patientPrescription.setCreateTime(new Date());
        patientPrescription.setState(1);
        System.out.println(patientPrescription);
        patientPrescriptionDao.addOne(patientPrescription);
        PrescriptionVO prescriptionVO = new PrescriptionVO(patientPrescription);
        return new JsonResult().code("0").msg("success").data(prescriptionVO);
    }

    @Override
    public JsonResult deletePrescription(int prescriptionID) {
        return null;
    }

    @Override
    public JsonResult addDrug(JSONObject jsonObject,int prescriptionID) {
        PatientPrescriptionDetail patientPrescriptionDetail = new PatientPrescriptionDetail();
        patientPrescriptionDetail.setPatientPrescriptionID(prescriptionID);
        patientPrescriptionDetail.setDrugID(jsonObject.getInteger("drugID"));
        patientPrescriptionDetail.setUsage(jsonObject.getString("usage"));
        patientPrescriptionDetail.setDosage(jsonObject.getString("dosage"));
        patientPrescriptionDetail.setFrequency(jsonObject.getString("frequency"));
        patientPrescriptionDetail.setAmount(jsonObject.getInteger("amount"));
        patientPrescriptionDetail.setState(1);

        patientPrescriptionDetailDao.addOne(patientPrescriptionDetail);

        Drug drug =drugDao.getOne(patientPrescriptionDetail.getDrugID());
        DrugDetailVO drugDetailVO = new DrugDetailVO(drug,patientPrescriptionDetail);
        return new JsonResult().code("0").msg("success").data(drugDetailVO);
    }

    @Override
    public JsonResult deleteDrug(int patientPrescriptionDetailID) {
        return null;
    }

    @Override
    public JsonResult useTemplate(int registerID, int userID, int currentPscriptTemplateID) {
        System.out.println(registerID);
        System.out.println(userID);
        System.out.println(currentPscriptTemplateID);
        PatientPrescription patientPrescription = new PatientPrescription();
        patientPrescription.setPatientIndexID(patientIndexDao.getOneByRegisterID(registerID).getPatientIndexID());
        patientPrescription.setRegisterID(registerID);
        patientPrescription.setUserID(userID);
        patientPrescription.setPrescriptionName(pscriptTemplateDao.getOne(currentPscriptTemplateID).getPscriptTemplateName());
        patientPrescription.setCreateTime(new Date());
        patientPrescription.setState(1);
        System.out.println(patientPrescription);
        patientPrescriptionDao.addOne(patientPrescription);

        List<PscriptTemplateDetail> pscriptTemplateDetailList = pscriptTemplateDetailDao.getAll(currentPscriptTemplateID);
        for(PscriptTemplateDetail pscriptTemplateDetail :pscriptTemplateDetailList){
            PatientPrescriptionDetail patientPrescriptionDetail = new PatientPrescriptionDetail();
            patientPrescriptionDetail.setPatientPrescriptionID(patientPrescription.getPatientPrescriptionID());
            patientPrescriptionDetail.setDrugID(pscriptTemplateDetail.getDrugID());
            patientPrescriptionDetail.setUsage(pscriptTemplateDetail.getUseage());
            patientPrescriptionDetail.setDosage(pscriptTemplateDetail.getDosage());
            patientPrescriptionDetail.setFrequency(pscriptTemplateDetail.getFrequency());
            patientPrescriptionDetail.setAmount(1);
            patientPrescriptionDetail.setState(1);
            patientPrescriptionDetailDao.addOne(patientPrescriptionDetail);
        }
        PrescriptionVO prescriptionVO = new PrescriptionVO(patientPrescription);
        return new JsonResult().code("0").msg("success").data(prescriptionVO);
    }

    @Override
    public JsonResult getPatientPrescriptionDetail(int prescriptionID) {
        List<PatientPrescriptionDetail> patientPrescriptionDetails = patientPrescriptionDetailDao.getAllByPrescriptionID(prescriptionID);
        List<DrugDetailVO> drugDetailVOList = new ArrayList<>();
        for(PatientPrescriptionDetail patientPrescriptionDetail : patientPrescriptionDetails){
            Drug drug =drugDao.getOne(patientPrescriptionDetail.getDrugID());
            DrugDetailVO drugDetailVO = new DrugDetailVO(drug,patientPrescriptionDetail);
            drugDetailVOList.add(drugDetailVO);
        }
        return new JsonResult().code("0").msg("success").data(drugDetailVOList);
    }

    @Override
    public JsonResult drugList() {
        List<Drug> drugList = drugDao.getAll();
        return new JsonResult().code("0").msg("success").data(drugList);
    }

    @Override
    public JsonResult openPrescription(int registerID) {
        List<PatientPrescription> patientPrescriptionList =patientPrescriptionDao.getAllByRegisterID(registerID);
        for(PatientPrescription patientPrescription :patientPrescriptionList){
            if(patientPrescription.getState()==1){
                patientPrescriptionDao.updateState(patientPrescription.getPatientPrescriptionID(),2);
                List<PatientPrescriptionDetail> patientPrescriptionDetailList= patientPrescriptionDetailDao.getAllByPrescriptionID(patientPrescription.getPatientPrescriptionID());
                    for(PatientPrescriptionDetail d :patientPrescriptionDetailList){
                        patientPrescriptionDetailDao.updateOne(d.getPatientPrescriptionDetailID(),2);
                    }
            }
        }
        return new JsonResult().code("0").msg("success");
    }
}
