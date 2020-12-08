package com.liuxp.his.PO;

public class CostType {

    private int costTypeID;
    private String cpstTypeCode;
    private String costTypeName;

    public int getCostTypeID() {
        return costTypeID;
    }

    public void setCostTypeID(int costTypeID) {
        this.costTypeID = costTypeID;
    }

    public String getCpstTypeCode() {
        return cpstTypeCode;
    }

    public void setCpstTypeCode(String cpstTypeCode) {
        this.cpstTypeCode = cpstTypeCode;
    }

    public String getCostTypeName() {
        return costTypeName;
    }

    public void setCostTypeName(String costTypeName) {
        this.costTypeName = costTypeName;
    }

    @Override
    public String toString() {
        return "CostType{" +
                "costTypeID=" + costTypeID +
                ", cpstTypeCode='" + cpstTypeCode + '\'' +
                ", costTypeName='" + costTypeName + '\'' +
                '}';
    }
}
