package com.liuxp.his.PO;

import java.util.Date;

public class PatientCostDetail {

    private int patientCostDetailID;
    private int registerID;
    private int invoiceID;
    private int itemType;
    private int costTypeID;
    private String itemName;
    private double itemPrice;
    private int itemMount;
    private int executeDeptID;
    private Date createTime;
    private int createUserID;
    private Date chargeTime;
    private int chargeUserID;

    public int getPatientCostDetailID() {
        return patientCostDetailID;
    }

    public void setPatientCostDetailID(int patientCostDetailID) {
        this.patientCostDetailID = patientCostDetailID;
    }

    public int getRegisterID() {
        return registerID;
    }

    public void setRegisterID(int registerID) {
        this.registerID = registerID;
    }

    public int getInvoiceID() {
        return invoiceID;
    }

    public void setInvoiceID(int invoiceID) {
        this.invoiceID = invoiceID;
    }

    public int getItemType() {
        return itemType;
    }

    public void setItemType(int itemType) {
        this.itemType = itemType;
    }

    public int getCostTypeID() {
        return costTypeID;
    }

    public void setCostTypeID(int costTypeID) {
        this.costTypeID = costTypeID;
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    public double getItemPrice() {
        return itemPrice;
    }

    public void setItemPrice(double itemPrice) {
        this.itemPrice = itemPrice;
    }

    public int getItemMount() {
        return itemMount;
    }

    public void setItemMount(int itemMount) {
        this.itemMount = itemMount;
    }

    public int getExecuteDeptID() {
        return executeDeptID;
    }

    public void setExecuteDeptID(int executeDeptID) {
        this.executeDeptID = executeDeptID;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public int getCreateUserID() {
        return createUserID;
    }

    public void setCreateUserID(int createUserID) {
        this.createUserID = createUserID;
    }

    public Date getChargeTime() {
        return chargeTime;
    }

    public void setChargeTime(Date chargeTime) {
        this.chargeTime = chargeTime;
    }

    public int getChargeUserID() {
        return chargeUserID;
    }

    public void setChargeUserID(int chargeUserID) {
        this.chargeUserID = chargeUserID;
    }

    @Override
    public String toString() {
        return "PatientCostDetail{" +
                "patientCostDetailID=" + patientCostDetailID +
                ", registerID=" + registerID +
                ", invoiceID=" + invoiceID +
                ", itemType=" + itemType +
                ", costTypeID=" + costTypeID +
                ", itemName='" + itemName + '\'' +
                ", itemPrice=" + itemPrice +
                ", itemMount=" + itemMount +
                ", executeDeptID=" + executeDeptID +
                ", createTime=" + createTime +
                ", createUserID=" + createUserID +
                ", chargeTime=" + chargeTime +
                ", chargeUserID=" + chargeUserID +
                '}';
    }
}