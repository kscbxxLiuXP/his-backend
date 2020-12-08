package com.liuxp.his.PO;

import java.util.Date;

public class PscriptTemplate {


    private int pscriptTemplateID;
    private String pscriptTemplateName;
    private int userID;
    private Date createTime;
    private int useRange;

    public int getPscriptTemplateID() {
        return pscriptTemplateID;
    }

    public void setPscriptTemplateID(int pscriptTemplateID) {
        this.pscriptTemplateID = pscriptTemplateID;
    }

    public String getPscriptTemplateName() {
        return pscriptTemplateName;
    }

    public void setPscriptTemplateName(String pscriptTemplateName) {
        this.pscriptTemplateName = pscriptTemplateName;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public int getUseRange() {
        return useRange;
    }

    public void setUseRange(int useRange) {
        this.useRange = useRange;
    }

    @Override
    public String toString() {
        return "PscriptTemplate{" +
                "pscriptTemplateID=" + pscriptTemplateID +
                ", pscriptTemplateName='" + pscriptTemplateName + '\'' +
                ", userID=" + userID +
                ", createTime=" + createTime +
                ", useRange=" + useRange +
                '}';
    }
}