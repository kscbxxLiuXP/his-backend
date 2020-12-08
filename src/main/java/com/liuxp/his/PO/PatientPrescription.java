package com.liuxp.his.PO;

import java.util.Date;

public class PatientPrescription {


    private int patientPrescriptionID;
    private int patientIndexID;
    private int registerID;
    private int userID;
    private String prescriptionName;
    private Date createTime;
    private int state;

    public int getPatientPrescriptionID() {
        return patientPrescriptionID;
    }

    public void setPatientPrescriptionID(int patientPrescriptionID) {
        this.patientPrescriptionID = patientPrescriptionID;
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

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public String getPrescriptionName() {
        return prescriptionName;
    }

    public void setPrescriptionName(String prescriptionName) {
        this.prescriptionName = prescriptionName;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    @Override
    public String toString() {
        return "PatientPrescription{" +
                "patientPrescriptionID=" + patientPrescriptionID +
                ", patientIndexID=" + patientIndexID +
                ", registerID=" + registerID +
                ", userID=" + userID +
                ", prescriptionName='" + prescriptionName + '\'' +
                ", createTime=" + createTime +
                ", state=" + state +
                '}';
    }
}