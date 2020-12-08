package com.liuxp.his.VO;

import com.liuxp.his.PO.PatientPrescription;

public class PrescriptionVO {
    public int prescriptionID;
    public int registerID;
    public String prescriptionName;
    public String state;

    public PrescriptionVO(PatientPrescription patientPrescription) {
        this.prescriptionID = patientPrescription.getPatientPrescriptionID();
        this.registerID = patientPrescription.getRegisterID();
        this.prescriptionName = patientPrescription.getPrescriptionName();
        this.state = stateToString(patientPrescription.getState());
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

    public int getPrescriptionID() {
        return prescriptionID;
    }

    public void setPrescriptionID(int prescriptionID) {
        this.prescriptionID = prescriptionID;
    }

    public int getRegisterID() {
        return registerID;
    }

    public void setRegisterID(int registerID) {
        this.registerID = registerID;
    }

    public String getPrescriptionName() {
        return prescriptionName;
    }

    public void setPrescriptionName(String prescriptionName) {
        this.prescriptionName = prescriptionName;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }
}
