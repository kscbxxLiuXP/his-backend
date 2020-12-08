package com.liuxp.his.PO;

public class PatientIndex {


    private int patientIndexID;
    private int patientID;
    private int registerID;
    private String chiefComplaint;
    private String presentMedicalHistory;
    private String presentMedicalTreatment;
    private String pastMedicalHistory;
    private String allergicHistory;
    private String bodyCheck;
    private String checkRec;
    private String notice;
    private String checkResult;
    private String diagnoseResult;
    private String treatmentSuggestion;
    private int state;

    public PatientIndex(int patientIndexID, int patientID, int registerID, String chiefComplaint, String presentMedicalHistory, String presentMedicalTreatment, String pastMedicalHistory, String allergicHistory, String bodyCheck, String checkRec, String notice, String checkResult, String diagnoseResult, String treatmentSuggestion, int state) {
        this.patientIndexID = patientIndexID;
        this.patientID = patientID;
        this.registerID = registerID;
        this.chiefComplaint = chiefComplaint;
        this.presentMedicalHistory = presentMedicalHistory;
        this.presentMedicalTreatment = presentMedicalTreatment;
        this.pastMedicalHistory = pastMedicalHistory;
        this.allergicHistory = allergicHistory;
        this.bodyCheck = bodyCheck;
        this.checkRec = checkRec;
        this.notice = notice;
        this.checkResult = checkResult;
        this.diagnoseResult = diagnoseResult;
        this.treatmentSuggestion = treatmentSuggestion;
        this.state = state;
    }

    public int getPatientIndexID() {
        return patientIndexID;
    }

    public void setPatientIndexID(int patientIndexID) {
        this.patientIndexID = patientIndexID;
    }

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

    public String getChiefComplaint() {
        return chiefComplaint;
    }

    public void setChiefComplaint(String chiefComplaint) {
        this.chiefComplaint = chiefComplaint;
    }

    public String getPresentMedicalHistory() {
        return presentMedicalHistory;
    }

    public void setPresentMedicalHistory(String presentMedicalHistory) {
        this.presentMedicalHistory = presentMedicalHistory;
    }

    public String getPresentMedicalTreatment() {
        return presentMedicalTreatment;
    }

    public void setPresentMedicalTreatment(String presentMedicalTreatment) {
        this.presentMedicalTreatment = presentMedicalTreatment;
    }

    public String getPastMedicalHistory() {
        return pastMedicalHistory;
    }

    public void setPastMedicalHistory(String pastMedicalHistory) {
        this.pastMedicalHistory = pastMedicalHistory;
    }

    public String getAllergicHistory() {
        return allergicHistory;
    }

    public void setAllergicHistory(String allergicHistory) {
        this.allergicHistory = allergicHistory;
    }

    public String getBodyCheck() {
        return bodyCheck;
    }

    public void setBodyCheck(String bodyCheck) {
        this.bodyCheck = bodyCheck;
    }

    public String getCheckRec() {
        return checkRec;
    }

    public void setCheckRec(String checkRec) {
        this.checkRec = checkRec;
    }

    public String getNotice() {
        return notice;
    }

    public void setNotice(String notice) {
        this.notice = notice;
    }

    public String getCheckResult() {
        return checkResult;
    }

    public void setCheckResult(String checkResult) {
        this.checkResult = checkResult;
    }

    public String getDiagnoseResult() {
        return diagnoseResult;
    }

    public void setDiagnoseResult(String diagnoseResult) {
        this.diagnoseResult = diagnoseResult;
    }

    public String getTreatmentSuggestion() {
        return treatmentSuggestion;
    }

    public void setTreatmentSuggestion(String treatmentSuggestion) {
        this.treatmentSuggestion = treatmentSuggestion;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    @Override
    public String toString() {
        return "PatientIndex{" +
                "patientIndexID=" + patientIndexID +
                ", patientID=" + patientID +
                ", registerID=" + registerID +
                ", chiefComplaint='" + chiefComplaint + '\'' +
                ", presentMedicalHistory='" + presentMedicalHistory + '\'' +
                ", presentMedicalTreatment='" + presentMedicalTreatment + '\'' +
                ", pastMedicalHistory='" + pastMedicalHistory + '\'' +
                ", allergicHistory='" + allergicHistory + '\'' +
                ", bodyCheck='" + bodyCheck + '\'' +
                ", checkRec='" + checkRec + '\'' +
                ", notice='" + notice + '\'' +
                ", checkResult='" + checkResult + '\'' +
                ", diagnoseResult='" + diagnoseResult + '\'' +
                ", treatmentSuggestion='" + treatmentSuggestion + '\'' +
                ", state=" + state +
                '}';
    }
}