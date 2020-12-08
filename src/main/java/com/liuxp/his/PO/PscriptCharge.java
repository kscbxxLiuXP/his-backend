package com.liuxp.his.PO;

public class PscriptCharge {


    private int pscriptChargeID;
    private int drugID;
    private double drugPrice;
    private int amount;

    public int getPscriptChargeID() {
        return pscriptChargeID;
    }

    public void setPscriptChargeID(int pscriptChargeID) {
        this.pscriptChargeID = pscriptChargeID;
    }

    public int getDrugID() {
        return drugID;
    }

    public void setDrugID(int drugID) {
        this.drugID = drugID;
    }

    public double getDrugPrice() {
        return drugPrice;
    }

    public void setDrugPrice(double drugPrice) {
        this.drugPrice = drugPrice;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }
}
