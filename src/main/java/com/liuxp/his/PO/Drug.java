package com.liuxp.his.PO;

import java.util.Date;

public class Drug {
    private int drugID;
    private String drugCode;
    private String drugName;
    private String drugSpecification;
    private String packUnit;
    private String manufacturer;
    private int drugDosageID;
    private int drugTypeID;
    private double drugPrice;
    private String drugHelperCode;
    private Date createTime;
    private Date lastModifyTime;

    public int getDrugID() {
        return drugID;
    }

    public void setDrugID(int drugID) {
        this.drugID = drugID;
    }

    public String getDrugCode() {
        return drugCode;
    }

    public void setDrugCode(String drugCode) {
        this.drugCode = drugCode;
    }

    public String getDrugName() {
        return drugName;
    }

    public void setDrugName(String drugName) {
        this.drugName = drugName;
    }

    public String getDrugSpecification() {
        return drugSpecification;
    }

    public void setDrugSpecification(String drugSpecification) {
        this.drugSpecification = drugSpecification;
    }

    public String getPackUnit() {
        return packUnit;
    }

    public void setPackUnit(String packUnit) {
        this.packUnit = packUnit;
    }

    public String getManufacturer() {
        return manufacturer;
    }

    public void setManufacturer(String manufacturer) {
        this.manufacturer = manufacturer;
    }

    public int getDrugDosageID() {
        return drugDosageID;
    }

    public void setDrugDosageID(int drugDosageID) {
        this.drugDosageID = drugDosageID;
    }

    public int getDrugTypeID() {
        return drugTypeID;
    }

    public void setDrugTypeID(int drugTypeID) {
        this.drugTypeID = drugTypeID;
    }

    public double getDrugPrice() {
        return drugPrice;
    }

    public void setDrugPrice(double drugPrice) {
        this.drugPrice = drugPrice;
    }

    public String getDrugHelperCode() {
        return drugHelperCode;
    }

    public void setDrugHelperCode(String drugHelperCode) {
        this.drugHelperCode = drugHelperCode;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getLastModifyTime() {
        return lastModifyTime;
    }

    public void setLastModifyTime(Date lastModifyTime) {
        this.lastModifyTime = lastModifyTime;
    }

    @Override
    public String toString() {
        return "Drug{" +
                "drugID=" + drugID +
                ", drugCode='" + drugCode + '\'' +
                ", drugName='" + drugName + '\'' +
                ", drugSpecification='" + drugSpecification + '\'' +
                ", packUnit='" + packUnit + '\'' +
                ", manufacturer='" + manufacturer + '\'' +
                ", drugDosageID=" + drugDosageID +
                ", drugTypeID=" + drugTypeID +
                ", drugPrice=" + drugPrice +
                ", drugHelperCode='" + drugHelperCode + '\'' +
                ", createTime=" + createTime +
                ", lastModifyTime=" + lastModifyTime +
                '}';
    }
}