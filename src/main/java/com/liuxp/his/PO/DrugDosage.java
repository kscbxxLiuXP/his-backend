package com.liuxp.his.PO;

public class DrugDosage {

    private int drugDosageID;
    private String drugDosageCode;
    private String drugDosageName;

    @Override
    public String toString() {
        return "DrugDosage{" +
                "drugDosageID=" + drugDosageID +
                ", drugDosageCode='" + drugDosageCode + '\'' +
                ", drugDosageName='" + drugDosageName + '\'' +
                '}';
    }

    public int getDrugDosageID() {
        return drugDosageID;
    }

    public void setDrugDosageID(int drugDosageID) {
        this.drugDosageID = drugDosageID;
    }

    public String getDrugDosageCode() {
        return drugDosageCode;
    }

    public void setDrugDosageCode(String drugDosageCode) {
        this.drugDosageCode = drugDosageCode;
    }

    public String getDrugDosageName() {
        return drugDosageName;
    }

    public void setDrugDosageName(String drugDosageName) {
        this.drugDosageName = drugDosageName;
    }
}