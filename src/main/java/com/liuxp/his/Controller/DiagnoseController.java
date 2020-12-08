package com.liuxp.his.Controller;

import com.alibaba.fastjson.JSONObject;
import com.liuxp.his.Model.JsonResult;
import com.liuxp.his.PO.PatientIndex;
import com.liuxp.his.Service.DiagnoseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@CrossOrigin
@RestController
public class DiagnoseController {

    @Autowired
    private DiagnoseService diagnoseService;

    @GetMapping(path = "/patient/untreated")
    public JsonResult getUtreatedPatient(@RequestParam("userID") int userID){
        return diagnoseService.listUntreatedPatients(userID);
    }

    @GetMapping(path = "/patient/treated")
    public JsonResult getTreatedPatient(@RequestParam("userID") int userID){
        return diagnoseService.listTreatedPatients(userID);
    }

    @GetMapping(path = "/disease/list")
    public JsonResult getDiseaseList(){
        return diagnoseService.listDiseases();
    }

    @PostMapping(path="/diagnose/add")
    public JsonResult addDiagnose(@RequestBody JSONObject jsonObject){
        System.out.println(jsonObject);
        return diagnoseService.addDiagnose(jsonObject);
    }

    @GetMapping(path="/patientIndex/get")
    public JsonResult getPatientIndex(@RequestParam("registerID") int registerID){
        return diagnoseService.getPatientIndex(registerID);
    }

    @GetMapping(path = "/diagnose/list")
    public JsonResult getDiagnoseList(@RequestParam("registerID") int registerID){

        return diagnoseService.getDiagnose(registerID);
    }

    //暂存
    @PostMapping(path = "/patientIndex/save")
    public JsonResult savePatientIndex(@RequestBody JSONObject jsonObject){
        System.out.println(jsonObject);
        PatientIndex patientIndex = (PatientIndex) JSONObject.toJavaObject(jsonObject,PatientIndex.class);
        return diagnoseService.handlePatientIndex(patientIndex,1);
    }

    @PostMapping(path="/patientIndex/submit")
    public JsonResult submitPatientIndex(@RequestBody JSONObject jsonObject){
        System.out.println(jsonObject);
        PatientIndex patientIndex = (PatientIndex) JSONObject.toJavaObject(jsonObject,PatientIndex.class);
        return diagnoseService.handlePatientIndex(patientIndex,2);
    }
}
