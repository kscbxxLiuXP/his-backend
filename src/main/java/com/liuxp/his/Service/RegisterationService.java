package com.liuxp.his.Service;

import com.alibaba.fastjson.JSONObject;
import com.liuxp.his.Model.JsonResult;
import com.liuxp.his.PO.Register;

import java.util.Date;

public interface RegisterationService {
    //输入患者ID查询相关信息
    public JsonResult getPatient(int patientID);

    //自动获取下一个发票号，同时要返回
    public JsonResult getInvoiceNumber();

    public JsonResult getDeptmentList();

    public JsonResult getRegisterLevelList();

    public JsonResult getDoctorList(int deptID, int registerLevelID);

    public JsonResult register(JSONObject jsonObject);

    public JsonResult getRegisteredNumber(int doctorID, Date date);

    public JsonResult checkPatientRegisteration(int patientID,Date date);
}
