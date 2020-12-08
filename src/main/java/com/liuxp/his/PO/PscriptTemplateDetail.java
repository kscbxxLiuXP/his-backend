package com.liuxp.his.PO;

public class PscriptTemplateDetail {


    private int pscriptTemplateDetailID;
    private int pscriptTemplateID;
    private int drugID;
    private String useage;
    private String dosage;
    private String frequency;

    public int getPscriptTemplateDetailID() {
        return pscriptTemplateDetailID;
    }

    public void setPscriptTemplateDetailID(int pscriptTemplateDetailID) {
        this.pscriptTemplateDetailID = pscriptTemplateDetailID;
    }

    public int getPscriptTemplateID() {
        return pscriptTemplateID;
    }

    public void setPscriptTemplateID(int pscriptTemplateID) {
        this.pscriptTemplateID = pscriptTemplateID;
    }

    public int getDrugID() {
        return drugID;
    }

    public void setDrugID(int drugID) {
        this.drugID = drugID;
    }

    public String getUseage() {
        return useage;
    }

    public void setUseage(String useage) {
        this.useage = useage;
    }

    public String getDosage() {
        return dosage;
    }

    public void setDosage(String dosage) {
        this.dosage = dosage;
    }

    public String getFrequency() {
        return frequency;
    }

    public void setFrequency(String frequency) {
        this.frequency = frequency;
    }
}
