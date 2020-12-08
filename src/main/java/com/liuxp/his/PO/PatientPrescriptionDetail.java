package com.liuxp.his.PO;

public class PatientPrescriptionDetail {


    private int patientPrescriptionDetailID;
    private int patientPrescriptionID;
    private int drugID;
    private String usage;
    private String dosage;
    private String frequency;
    private int amount;
    private int state;

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

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }
}
