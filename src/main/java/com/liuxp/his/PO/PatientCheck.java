package com.liuxp.his.PO;

import java.util.Date;

public class PatientCheck {


    private int patientCheckID;
    private int registerID;
    private int patientIndexID;
    private int checkID;
    private String checkResult;
    private int userID;
    private Date createTime;
    private int state;
    private int checkType;

    public int getPatientCheckID() {
        return patientCheckID;
    }

    public void setPatientCheckID(int patientCheckID) {
        this.patientCheckID = patientCheckID;
    }

    public int getRegisterID() {
        return registerID;
    }

    public void setRegisterID(int registerID) {
        this.registerID = registerID;
    }

    public int getPatientIndexID() {
        return patientIndexID;
    }

    public void setPatientIndexID(int patientIndexID) {
        this.patientIndexID = patientIndexID;
    }

    public int getCheckID() {
        return checkID;
    }

    public void setCheckID(int checkID) {
        this.checkID = checkID;
    }

    public String getCheckResult() {
        return checkResult;
    }

    public void setCheckResult(String checkResult) {
        this.checkResult = checkResult;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
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

    public int getCheckType() {
        return checkType;
    }

    public void setCheckType(int checkType) {
        this.checkType = checkType;
    }

    @Override
    public String toString() {
        return "PatientCheck{" +
                "patientCheckID=" + patientCheckID +
                ", registerID=" + registerID +
                ", patientIndexID=" + patientIndexID +
                ", checkID=" + checkID +
                ", checkResult='" + checkResult + '\'' +
                ", userID=" + userID +
                ", createTime=" + createTime +
                ", state=" + state +
                ", checkType=" + checkType +
                '}';
    }
}