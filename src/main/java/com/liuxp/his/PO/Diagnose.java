package com.liuxp.his.PO;

import java.util.Date;

public class Diagnose {

    private int diagnoseID;
    private int patientIndexID;
    private int registerID;
    private int diseaseID;
    private int diagnoseType;
    private Date diseaseTime;

    public int getDiagnoseID() {
        return diagnoseID;
    }

    public void setDiagnoseID(int diagnoseID) {
        this.diagnoseID = diagnoseID;
    }

    public int getPatientIndexID() {
        return patientIndexID;
    }

    public void setPatientIndexID(int patientIndexID) {
        this.patientIndexID = patientIndexID;
    }

    public int getRegisterID() {
        return registerID;
    }

    public void setRegisterID(int registerID) {
        this.registerID = registerID;
    }

    public int getDiseaseID() {
        return diseaseID;
    }

    public void setDiseaseID(int diseaseID) {
        this.diseaseID = diseaseID;
    }

    public int getDiagnoseType() {
        return diagnoseType;
    }

    public void setDiagnoseType(int diagnoseType) {
        this.diagnoseType = diagnoseType;
    }

    public Date getDiseaseTime() {
        return diseaseTime;
    }

    public void setDiseaseTime(Date diseaseTime) {
        this.diseaseTime = diseaseTime;
    }

    @Override
    public String toString() {
        return "Diagnose{" +
                "diagnoseID=" + diagnoseID +
                ", patientIndexID=" + patientIndexID +
                ", registerID=" + registerID +
                ", diseaseID=" + diseaseID +
                ", diagnoseType=" + diagnoseType +
                ", diseaseTime=" + diseaseTime +
                '}';
    }
}