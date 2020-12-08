package com.liuxp.his.VO;

import com.liuxp.his.PO.Drug;
import com.liuxp.his.PO.DrugDosage;
import com.liuxp.his.PO.PatientPrescriptionDetail;

public class DrugDetailVO {
    public int patientPrescriptionDetailID;
    public int patientPrescriptionID;
    public int drugID;
    public String specification;
    public String usage;
    public String dosage;
    public String frequency;
    public int amount;
    public String state;
    public String drugName;
    public double drugPrice;


    public DrugDetailVO(Drug drug, PatientPrescriptionDetail patientPrescriptionDetail) {
        this.patientPrescriptionDetailID = patientPrescriptionDetail.getPatientPrescriptionDetailID();
        this.specification=drug.getDrugSpecification();
        this.patientPrescriptionID = patientPrescriptionDetail.getPatientPrescriptionID();
        this.drugID = drug.getDrugID();
        this.usage = patientPrescriptionDetail.getUsage();
        this.dosage = patientPrescriptionDetail.getDosage();
        this.frequency = patientPrescriptionDetail.getFrequency();
        this.amount = patientPrescriptionDetail.getAmount();
        this.state = stateToString(patientPrescriptionDetail.getState());
        this.drugName = drug.getDrugName();
        this.drugPrice = drug.getDrugPrice();
    }

    public String stateToString(int state) {
        String result = new String();
        switch (state) {
            case 1:
                result = "暂存";
                break;
            case 2:
                result = "开立";
                break;
            case 0:
                result = "作废";
                break;
            case 3:
                result = "缴费";
                break;
            case 4:
                result = "发药";
                break;
        }
        return result;
    }

    public String getSpecification() {

        return specification;
    }

    public void setSpecification(String specification) {
        this.specification = specification;
    }

    public int getPatientPrescriptionDetailID() {
        return patientPrescriptionDetailID;
    }

    public void setPatientPrescriptionDetailID(int patientPrescriptionDetailID) {
        this.patientPrescriptionDetailID = patientPrescriptionDetailID;
    }

    public int getPatientPrescriptionID() {
        return patientPrescriptionID;
    }

    public void setPatientPrescriptionID(int patientPrescriptionID) {
        this.patientPrescriptionID = patientPrescriptionID;
    }

    public int getDrugID() {
        return drugID;
    }

    public void setDrugID(int drugID) {
        this.drugID = drugID;
    }

    public String getUsage() {
        return usage;
    }

    public void setUsage(String usage) {
        this.usage = usage;
    }

    public String getDosage() {
        return dosage;
    }

    public void setDosage(String dosage) {
        this.dosage = dosage;
    }

    public String getFrequency() {
        return frequency;
    }

    public void setFrequency(String frequency) {
        this.frequency = frequency;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getDrugName() {
        return drugName;
    }

    public void setDrugName(String drugName) {
        this.drugName = drugName;
    }

    public double getDrugPrice() {
        return drugPrice;
    }

    public void setDrugPrice(double drugPrice) {
        this.drugPrice = drugPrice;
    }

}
