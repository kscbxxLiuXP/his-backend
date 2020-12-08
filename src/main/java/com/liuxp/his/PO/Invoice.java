package com.liuxp.his.PO;

import java.util.Date;

public class Invoice {


    private int invoiceID;
    private int invoiceNumber;
    private double invoiceValue;
    private String invoiceState;
    private Date chargeTime;
    private int chargeUserID;
    private int registerID;

    public int getInvoiceID() {
        return invoiceID;
    }

    public void setInvoiceID(int invoiceID) {
        this.invoiceID = invoiceID;
    }

    public int getInvoiceNumber() {
        return invoiceNumber;
    }

    public void setInvoiceNumber(int invoiceNumber) {
        this.invoiceNumber = invoiceNumber;
    }

    public double getInvoiceValue() {
        return invoiceValue;
    }

    public void setInvoiceValue(double invoiceValue) {
        this.invoiceValue = invoiceValue;
    }

    public String getInvoiceState() {
        return invoiceState;
    }

    public void setInvoiceState(String invoiceState) {
        this.invoiceState = invoiceState;
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

    public int getRegisterID() {
        return registerID;
    }

    public void setRegisterID(int registerID) {
        this.registerID = registerID;
    }

    @Override
    public String toString() {
        return "Invoice{" +
                "invoiceID=" + invoiceID +
                ", invoiceNumber=" + invoiceNumber +
                ", invoiceValue=" + invoiceValue +
                ", invoiceState='" + invoiceState + '\'' +
                ", chargeTime=" + chargeTime +
                ", chargeUserID=" + chargeUserID +
                ", registerID=" + registerID +
                '}';
    }
}