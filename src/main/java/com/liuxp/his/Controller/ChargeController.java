package com.liuxp.his.Controller;


import com.alibaba.fastjson.JSONObject;
import com.liuxp.his.Model.JsonResult;
import com.liuxp.his.Service.ChargeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@CrossOrigin
@RestController
public class ChargeController {

    @Autowired
    private ChargeService chargeService;


    @GetMapping(path = "patient/search")
    public JsonResult searchPatient(@RequestParam("patientID") int patientID) {
        return chargeService.searchPatient(patientID);
    }

    @GetMapping(path = "patient/cost/charge")
    public JsonResult chargePatient(@RequestParam("patientID") int patientID) {
        return chargeService.chargePatient(patientID);
    }

    @PostMapping(path = "/chargePatient")
    public JsonResult patientCharge(@RequestBody JSONObject jsonObject) {
        return chargeService.patientCharge(jsonObject);
    }

    @GetMapping(path = "patient/cost/refund")
    public JsonResult refundPatient(@RequestParam("patientID") int patientID) {
        return chargeService.refundPatient(patientID);
    }

    @PostMapping(path = "/refundPatient")
    public JsonResult patientRefund(@RequestBody JSONObject jsonObject) {
        return chargeService.patientRefund(jsonObject);

    }
}
