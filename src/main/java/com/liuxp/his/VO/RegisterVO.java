package com.liuxp.his.VO;

import com.liuxp.his.PO.Patient;
import com.liuxp.his.PO.Register;
import com.liuxp.his.PO.Register1;
import com.liuxp.his.PO.User;
import com.liuxp.his.Utils.Util;

public class RegisterVO {
    public int registerID;
    public int patientID;
    public String name;
    public String doctorName;
    public String diagnoseDate;
    public String registerTime;
    public String registerUserName;
    public String state;


    public RegisterVO(Register register, String doctorName, Patient patient, String registerUserName) {
        this.registerID = register.getRegisterID();
        this.patientID = register.getPatientID();
        this.name = patient.getName();
        this.doctorName = doctorName;
        this.diagnoseDate = Util.date2String(register.getDiagnoseDate());
        this.registerTime = Util.dateTime2String(register.getRegisterTime());
        this.registerUserName = registerUserName;

        if(register.getDiagnoseState()==1)
            this.state="已挂号";
        if(register.getDiagnoseState()>1)
            this.state="已诊断";
        if(register.getDiagnoseState()==0)
            this.state="已退号";
    }

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

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDoctorName() {
        return doctorName;
    }

    public void setDoctorName(String doctorName) {
        this.doctorName = doctorName;
    }

    public String getDiagnoseDate() {
        return diagnoseDate;
    }

    public void setDiagnoseDate(String diagnoseDate) {
        this.diagnoseDate = diagnoseDate;
    }

    public String getRegisterTime() {
        return registerTime;
    }

    public void setRegisterTime(String registerTime) {
        this.registerTime = registerTime;
    }

    public String getRegisterUserName() {
        return registerUserName;
    }

    public void setRegisterUserName(String registerUserName) {
        this.registerUserName = registerUserName;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

}
