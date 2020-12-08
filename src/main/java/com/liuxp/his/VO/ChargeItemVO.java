package com.liuxp.his.VO;

public class ChargeItemVO {
    public int patientID;
    public String patientName;
    public String itemName;
    public Double price;
    public int amount;
    public String openDoctor;
    public String openTime;
    public String state;
    public int patientPrescriptionID;
    public int patientPrescriptionDetailID;

    public ChargeItemVO(int patientID, String patientName, String itemName, Double price, int amount, String openDoctor, String openTime, String state, int patientPrescriptionID, int patientPrescriptionDetailID) {
        this.patientID = patientID;
        this.patientName = patientName;
        this.itemName = itemName;
        this.price = price;
        this.amount = amount;
        this.openDoctor = openDoctor;
        this.openTime = openTime;
        this.state = state;
        this.patientPrescriptionID = patientPrescriptionID;
        this.patientPrescriptionDetailID = patientPrescriptionDetailID;
    }

    public int getPatientID() {
        return patientID;
    }

    public void setPatientID(int patientID) {
        this.patientID = patientID;
    }

    public String getPatientName() {
        return patientName;
    }

    public void setPatientName(String patientName) {
        this.patientName = patientName;
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public String getOpenDoctor() {
        return openDoctor;
    }

    public void setOpenDoctor(String openDoctor) {
        this.openDoctor = openDoctor;
    }

    public String getOpenTime() {
        return openTime;
    }

    public void setOpenTime(String openTime) {
        this.openTime = openTime;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }
}
