package com.liuxp.his.Controller;

import com.alibaba.fastjson.JSONObject;
import com.liuxp.his.Model.JsonResult;
import com.liuxp.his.Service.OpenDrugService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@CrossOrigin
@RestController
public class OpenDrugController {
    @Autowired
    private OpenDrugService openDrugService;

    @GetMapping(path = "/prescriptionTemplate/all")
    public JsonResult getPrescriptionTemplateAll() {

        return openDrugService.getPrescriptionTemplateAll();
    }


    @GetMapping(path = "/prescriptionTemplate/detail")
    public JsonResult getprescriptionTemplateDetail(@RequestParam("prescriptionTemplateID") int prescriptionTemplateID) {

        return openDrugService.getPrescriptionTemplateDetail(prescriptionTemplateID);
    }

    //查询患者所有处方
    @GetMapping(path = "/patientPrescription/get")
    public JsonResult getPatientPrescriptionList(@RequestParam("registerID") int registerID) {

        return openDrugService.getPatientPrescriptionList(registerID);
    }

    //查询处方明细
    @GetMapping(path = "/patientPrescription/detail")
    public JsonResult getPatientPrescriptionDetail(@RequestParam("prescriptionID") int prescriptionID) {
        return openDrugService.getPatientPrescriptionDetail(prescriptionID);
    }

    //添加处方
    @PostMapping(path = "/patientPrescription/add")
    public JsonResult addPatientPrescription(@RequestParam("prescriptionName") String prescriptionName,
                                             @RequestParam("registerID") int registerID,
                                             @RequestParam("userID") int userID) {

        return openDrugService.addPrescription(registerID,prescriptionName,userID);
    }

    //获取所有的drug
    @GetMapping(path = "/drug/list")
    public JsonResult getDrugList() {
        return openDrugService.drugList();
    }

    //删除处方
    @GetMapping(path = "/patientPrescription/delete")
    public JsonResult deletePatientPrescription(@RequestParam("prescriptionID") int prescriptionID) {
        return null;
    }

    //增加药品
    @PostMapping(path = "/patientPrescription/addDrug")
    public JsonResult addDrug(@RequestParam("prescriptionID") int prescriptionID, @RequestBody JSONObject jsonObject) {
        return openDrugService.addDrug(jsonObject, prescriptionID);
    }

    //删除药品
    @GetMapping(path = "/patientPrescription/deleteDrug")
    public JsonResult deleteDrug(@RequestParam("patientPrescriptionDetailID") int patientPrescriptionDetailID) {
        return null;
    }


    @GetMapping(path = "/prescriptionTemplate/use")
    public JsonResult useTemplate(@RequestParam("registerID") int registerID, @RequestParam("userID") int userID,
                                  @RequestParam("currentPscriptTemplateID") int currentPscriptTemplateID) {
        return openDrugService.useTemplate(registerID, userID, currentPscriptTemplateID);
    }

    @GetMapping(path="/prescription/open")
    public JsonResult openPrescription(@RequestParam("registerID") int registerID){
return openDrugService.openPrescription(registerID);
    }
}
