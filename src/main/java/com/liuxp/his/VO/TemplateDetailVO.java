package com.liuxp.his.VO;

import com.liuxp.his.PO.Drug;
import com.liuxp.his.PO.PscriptTemplateDetail;

public class TemplateDetailVO {
    public int drugID;
    public String drugName;
    public String specification;
    public double price;
    public String usage;
    public String dosage;
    public String frequency;

    public TemplateDetailVO(Drug drug, PscriptTemplateDetail pscriptTemplateDetail) {
        this.drugID=drug.getDrugID();
        this.drugName = drug.getDrugName();
        this.specification = drug.getDrugSpecification();
        this.price = drug.getDrugPrice();
        this.usage = pscriptTemplateDetail.getUseage();
        this.dosage = pscriptTemplateDetail.getDosage();
        this.frequency = pscriptTemplateDetail.getFrequency();
    }

    public int getDrugID() {
        return drugID;
    }

    public void setDrugID(int drugID) {
        this.drugID = drugID;
    }

    public String getDrugName() {
        return drugName;
    }

    public void setDrugName(String drugName) {
        this.drugName = drugName;
    }

    public String getSpecification() {
        return specification;
    }

    public void setSpecification(String specification) {
        this.specification = specification;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getUsage() {
        return usage;
    }

    public void setUsage(String usage) {
        this.usage = usage;
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
