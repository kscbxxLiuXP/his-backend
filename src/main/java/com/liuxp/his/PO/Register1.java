package com.liuxp.his.PO;

import java.util.Date;

public class Register1 {

    private int registerID;
    private int patientID;
    private Date diagnoseDate;
    private String noon;
    private int deptID;
    private int doctorUserID;
    private int registerLevelID;
    private int bookNeeded;
    private Date registerTime;
    private int registerUserID;
    private int diagnoseState;
    private Date unregisterTime;
    private int unregisterUserID;



    public int getRegisterID() {
        return registerID;
    }

    public void setRegisterID(int registerID) {
        this.registerID = registerID;
    }

    public int getPatientID() {
        return patientID;
    }

    public void setPatientID(int patientID) {
        this.patientID = patientID;
    }

    public Date getDiagnoseDate() {
        return diagnoseDate;
    }

    public void setDiagnoseDate(Date diagnoseDate) {
        this.diagnoseDate = diagnoseDate;
    }

    public String getNoon() {
        return noon;
    }

    public void setNoon(String noon) {
        this.noon = noon;
    }

    public int getDeptID() {
        return deptID;
    }

    public void setDeptID(int deptID) {
        this.deptID = deptID;
    }

    public int getDoctorUserID() {
        return doctorUserID;
    }

    public void setDoctorUserID(int doctorUserID) {
        this.doctorUserID = doctorUserID;
    }

    public int getRegisterLevelID() {
        return registerLevelID;
    }

    public void setRegisterLevelID(int registerLevelID) {
        this.registerLevelID = registerLevelID;
    }

    public int getBookNeeded() {
        return bookNeeded;
    }

    public void setBookNeeded(int bookNeeded) {
        this.bookNeeded = bookNeeded;
    }

    public Date getRegisterTime() {
        return registerTime;
    }

    public void setRegisterTime(Date registerTime) {
        this.registerTime = registerTime;
    }

    public int getRegisterUserID() {
        return registerUserID;
    }

    public void setRegisterUserID(int registerUserID) {
        this.registerUserID = registerUserID;
    }

    public int getDiagnoseState() {
        return diagnoseState;
    }

    public void setDiagnoseState(int diagnoseState) {
        this.diagnoseState = diagnoseState;
    }

    public Date getUnregisterTime() {
        return unregisterTime;
    }

    public void setUnregisterTime(Date unregisterTime) {
        this.unregisterTime = unregisterTime;
    }

    public int getUnregisterUserID() {
        return unregisterUserID;
    }

    public void setUnregisterUserID(int unregisterUserID) {
        this.unregisterUserID = unregisterUserID;
    }

    @Override
    public String toString() {
        return "Register{" +
                "registerID=" + registerID +
                ", patientID=" + patientID +
                ", diagnoseDate=" + diagnoseDate +
                ", noon='" + noon + '\'' +
                ", deptID=" + deptID +
                ", doctorUserID=" + doctorUserID +
                ", registerLevelID=" + registerLevelID +
                ", bookNeeded=" + bookNeeded +
                ", registerTime=" + registerTime +
                ", registerUserID=" + registerUserID +
                ", diagnoseState=" + diagnoseState +
                '}';
    }
}