package com.liuxp.his.Controller;

import com.alibaba.fastjson.JSONObject;
import com.liuxp.his.Model.JsonResult;
import com.liuxp.his.Service.RegisterationService;
import com.liuxp.his.Service.UnregisterService;
import com.liuxp.his.Utils.Util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.context.request.WebRequest;

import javax.xml.crypto.Data;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

@CrossOrigin
@RestController
public class RegisterationController {

    @Autowired
    private RegisterationService registerationService;

    @Autowired
    private UnregisterService unregisterService;

    @GetMapping(path = "/patient/info")
    public JsonResult getPatient(@RequestParam("patientID") int patientID) {
        return registerationService.getPatient(patientID);
    }

    @GetMapping(path = "/patient/registered")
    public JsonResult checkPatientRegisteration(@RequestParam("patientID") int patientID, @RequestParam("date") String date) {
        return registerationService.checkPatientRegisteration(patientID, Util.dateFormat(date));
    }

    @GetMapping(path = "/invoice/number")
    public JsonResult getInvoiceNumber() {
        return registerationService.getInvoiceNumber();
    }

    @GetMapping(path = "/department/list")
    public JsonResult getDepartmentList() {
        return registerationService.getDeptmentList();
    }

    @GetMapping(path = "/registerLevel/list")
    public JsonResult getRegisterLevelList() {
        return registerationService.getRegisterLevelList();
    }

    @GetMapping(path = "/doctor/list")
    public JsonResult getDoctorList(@RequestParam("deptID") int deptID, @RequestParam("registerLevelID") int registerLevelID) {
        return registerationService.getDoctorList(deptID, registerLevelID);
    }

    @GetMapping(path = "/register/registered/num")
    public JsonResult getRegisteredNum(@RequestParam("doctorID") int doctorID, @RequestParam("date") String date) {
        //mybatis 对日期的操作有一些问题，我也不知道为啥，但是要加一
        return registerationService.getRegisteredNumber(doctorID, Util.dateFormat(date));
    }

    @PostMapping(path = "/register/submit")
    public JsonResult register(@RequestBody JSONObject jsonObject) {
        return registerationService.register(jsonObject);
    }

    @GetMapping(path = "/timeTest")
    public void testTime(@RequestParam("date") Date date) {
        System.out.println(date);
    }

    @GetMapping(path="/unregister")
    public JsonResult unregister(@RequestParam("registerID") int unregisterID){
        return unregisterService.unRegister(unregisterID);
    }

    @GetMapping(path="register/getPatientRecord")
    public JsonResult getPatientRegisterRecord(@RequestParam("patientID") int patientID){
        return unregisterService.getAllRecord(patientID);
    }
}
