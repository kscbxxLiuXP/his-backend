package com.liuxp.his.Service;

import com.alibaba.fastjson.JSONObject;
import com.liuxp.his.Model.JsonResult;
import com.liuxp.his.PO.PatientPrescription;
import com.liuxp.his.VO.DrugDetailVO;

public interface OpenDrugService {
    public JsonResult getPrescriptionTemplateAll();

    public JsonResult getPrescriptionTemplateDetail(int prescriptionTemplateID);

    public JsonResult getPatientPrescriptionList(int register);

    public JsonResult addPrescription(int registerID,String prescriptionName,int userID);

    public JsonResult deletePrescription(int prescriptionID);

    public JsonResult addDrug(JSONObject jsonObject, int prescriptionID);

    public JsonResult deleteDrug(int patientPrescriptionDetailID);

    public JsonResult useTemplate(int registerID, int userID, int currentPscriptTemplateID );

    public JsonResult getPatientPrescriptionDetail(int prescriptionID);

    public JsonResult drugList();

    public JsonResult openPrescription(int registerID);
}
