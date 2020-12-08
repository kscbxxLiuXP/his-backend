package com.liuxp.his.Service;

import com.alibaba.fastjson.JSONObject;
import com.liuxp.his.Model.JsonResult;
import com.liuxp.his.PO.Diagnose;
import com.liuxp.his.PO.PatientIndex;

import java.util.Date;
import java.util.List;

public interface DiagnoseService {

    //患者列表
    public JsonResult listUntreatedPatients(int userID);

    public JsonResult listTreatedPatients(int userID);
    /*病例首页数据*/
    public JsonResult getPatientIndex(int registerID);

    //处理病历首页的请求(1-暂存 2-开立 3-删除)
    public JsonResult handlePatientIndex(PatientIndex patientIndex, int handelCode);

    //列举所有的疾病
    public JsonResult listDiseases();

    public JsonResult addDiagnose(JSONObject jsonObject);

    public JsonResult getDiagnose(int registerID);


}
