package com.liuxp.his.PO;

import java.util.Date;

public class Check {

    private int checkID;
    private String checkCode;
    private String checkName;
    private String checkSpecification;
    private double checkPrice;
    private int costTypeID;
    private int deptID;
    private String checkHelperCode;
    private Date createTime;
    private Date lastModifyTime;


    public int getCheckID() {
        return checkID;
    }

    public void setCheckID(int checkID) {
        this.checkID = checkID;
    }

    public String getCheckCode() {
        return checkCode;
    }

    public void setCheckCode(String checkCode) {
        this.checkCode = checkCode;
    }

    public String getCheckName() {
        return checkName;
    }

    public void setCheckName(String checkName) {
        this.checkName = checkName;
    }

    public String getCheckSpecification() {
        return checkSpecification;
    }

    public void setCheckSpecification(String checkSpecification) {
        this.checkSpecification = checkSpecification;
    }

    public double getCheckPrice() {
        return checkPrice;
    }

    public void setCheckPrice(double checkPrice) {
        this.checkPrice = checkPrice;
    }

    public int getCostTypeID() {
        return costTypeID;
    }

    public void setCostTypeID(int costTypeID) {
        this.costTypeID = costTypeID;
    }

    public int getDeptID() {
        return deptID;
    }

    public void setDeptID(int deptID) {
        this.deptID = deptID;
    }

    public String getCheckHelperCode() {
        return checkHelperCode;
    }

    public void setCheckHelperCode(String checkHelperCode) {
        this.checkHelperCode = checkHelperCode;
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
        return "Check{" +
                "checkID=" + checkID +
                ", checkCode='" + checkCode + '\'' +
                ", checkName='" + checkName + '\'' +
                ", checkSpecification='" + checkSpecification + '\'' +
                ", checkPrice=" + checkPrice +
                ", costTypeID=" + costTypeID +
                ", deptID=" + deptID +
                ", checkHelperCode='" + checkHelperCode + '\'' +
                ", createTime=" + createTime +
                ", lastModifyTime=" + lastModifyTime +
                '}';
    }
}
