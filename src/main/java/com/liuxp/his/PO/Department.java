package com.liuxp.his.PO;

public class Department {

    private int deptID;
    private String deptCode;
    private String deptName;
    private int deptCategoryID;

    @Override
    public String toString() {
        return "Department{" +
                "deptID=" + deptID +
                ", deptCode='" + deptCode + '\'' +
                ", deptName='" + deptName + '\'' +
                ", deptCategoryID=" + deptCategoryID +
                '}';
    }

    public int getDeptID() {
        return deptID;
    }

    public void setDeptID(int deptID) {
        this.deptID = deptID;
    }

    public String getDeptCode() {
        return deptCode;
    }

    public void setDeptCode(String deptCode) {
        this.deptCode = deptCode;
    }

    public String getDeptName() {
        return deptName;
    }

    public void setDeptName(String deptName) {
        this.deptName = deptName;
    }

    public int getDeptCategoryID() {
        return deptCategoryID;
    }

    public void setDeptCategoryID(int deptCategoryID) {
        this.deptCategoryID = deptCategoryID;
    }
}
