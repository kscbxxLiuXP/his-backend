package com.liuxp.his.PO;

public class DeptCategory {

    private int deptCategoryID;
    private String deptCategoryCode;
    private String deptCategoryName;

    public int getDeptCategoryID() {
        return deptCategoryID;
    }

    public void setDeptCategoryID(int deptCategoryID) {
        this.deptCategoryID = deptCategoryID;
    }

    public String getDeptCategoryCode() {
        return deptCategoryCode;
    }

    public void setDeptCategoryCode(String deptCategoryCode) {
        this.deptCategoryCode = deptCategoryCode;
    }

    public String getDeptCategoryName() {
        return deptCategoryName;
    }

    public void setDeptCategoryName(String deptCategoryName) {
        this.deptCategoryName = deptCategoryName;
    }

    @Override
    public String toString() {
        return "DeptCategory{" +
                "deptCategoryID=" + deptCategoryID +
                ", deptCategoryCode='" + deptCategoryCode + '\'' +
                ", deptCategoryName='" + deptCategoryName + '\'' +
                '}';
    }
}
