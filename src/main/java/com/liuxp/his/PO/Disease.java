package com.liuxp.his.PO;

public class Disease {

    private int diseaseID;
    private String diseaseCode;
    private String diseaseName;
    private String diseaseICDCode;
    private int diseaseCategoryID;

    public int getDiseaseID() {
        return diseaseID;
    }

    public void setDiseaseID(int diseaseID) {
        this.diseaseID = diseaseID;
    }

    public String getDiseaseCode() {
        return diseaseCode;
    }

    public void setDiseaseCode(String diseaseCode) {
        this.diseaseCode = diseaseCode;
    }

    public String getDiseaseName() {
        return diseaseName;
    }

    public void setDiseaseName(String diseaseName) {
        this.diseaseName = diseaseName;
    }

    public String getDiseaseICDCode() {
        return diseaseICDCode;
    }

    public void setDiseaseICDCode(String diseaseICDCode) {
        this.diseaseICDCode = diseaseICDCode;
    }

    public int getDiseaseCategoryID() {
        return diseaseCategoryID;
    }

    public void setDiseaseCategoryID(int diseaseCategoryID) {
        this.diseaseCategoryID = diseaseCategoryID;
    }

    @Override
    public String toString() {
        return "Disease{" +
                "diseaseID=" + diseaseID +
                ", diseaseCode='" + diseaseCode + '\'' +
                ", diseaseName='" + diseaseName + '\'' +
                ", diseaseICDCode='" + diseaseICDCode + '\'' +
                ", diseaseCategoryID=" + diseaseCategoryID +
                '}';
    }
}