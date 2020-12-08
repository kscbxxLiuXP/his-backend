package com.liuxp.his.Service;

import com.alibaba.fastjson.JSONObject;
import com.liuxp.his.Model.JsonResult;

public interface ChargeService {

    public JsonResult searchPatient(int patientID);

    public JsonResult chargePatient(int patientID);

    public JsonResult patientCharge(JSONObject jsonObject);

    public JsonResult refundPatient(int patientID);

    public JsonResult patientRefund(JSONObject jsonObject);

}
