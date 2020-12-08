package com.liuxp.his.VO;

import com.liuxp.his.PO.Patient;
import com.liuxp.his.PO.PatientIndex;

//呈现带诊患者列表
public class PatientVO {
    private int patientID;
    private int registerID;
    private int patientIndexID;
    private String name;
    private int age;
    private String sex;


    public int getPatientID() {
        return patientID;
    }

    public void setPatientID(int patientID) {
        this.patientID = patientID;
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

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public PatientVO(Patient patient, PatientIndex patientIndex) {
        this.patientID = patient.getPatientID();
        this.registerID = patientIndex.getRegisterID();
        this.patientIndexID = patientIndex.getPatientIndexID();
        this.name = patient.getName();
        this.age = patient.getAge();
        this.sex = patient.getSex();
    }
}
