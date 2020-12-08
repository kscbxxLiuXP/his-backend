package com.liuxp.his.PO;

public class DiseaseCategory {

    private int diseaseCategoryID;
    private String diseaseName;

    public int getDiseaseCategoryID() {
        return diseaseCategoryID;
    }

    public void setDiseaseCategoryID(int diseaseCategoryID) {
        this.diseaseCategoryID = diseaseCategoryID;
    }

    public String getDiseaseName() {
        return diseaseName;
    }

    public void setDiseaseName(String diseaseName) {
        this.diseaseName = diseaseName;
    }

    @Override
    public String toString() {
        return "DiseaseCategory{" +
                "diseaseCategoryID=" + diseaseCategoryID +
                ", diseaseName='" + diseaseName + '\'' +
                '}';
    }
}