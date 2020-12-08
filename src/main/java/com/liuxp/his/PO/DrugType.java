package com.liuxp.his.PO;

public class DrugType {

    private int drugTypeID;
    private String drugTypeCode;
    private String drugTypeName;


    public int getDrugTypeID() {
        return drugTypeID;
    }

    public void setDrugTypeID(int drugTypeID) {
        this.drugTypeID = drugTypeID;
    }

    public String getDrugTypeCode() {
        return drugTypeCode;
    }

    public void setDrugTypeCode(String drugTypeCode) {
        this.drugTypeCode = drugTypeCode;
    }

    public String getDrugTypeName() {
        return drugTypeName;
    }

    public void setDrugTypeName(String drugTypeName) {
        this.drugTypeName = drugTypeName;
    }

    @Override
    public String toString() {
        return "DrugType{" +
                "drugTypeID=" + drugTypeID +
                ", drugTypeCode='" + drugTypeCode + '\'' +
                ", drugTypeName='" + drugTypeName + '\'' +
                '}';
    }
}