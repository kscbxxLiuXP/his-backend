package com.liuxp.his.PO;

public class ScheduleRule {

    private int scheduleRuleID;
    private String scheduleRuleName;
    private int deptID;
    private int userID;
    private String rule;

    public int getScheduleRuleID() {
        return scheduleRuleID;
    }

    public void setScheduleRuleID(int scheduleRuleID) {
        this.scheduleRuleID = scheduleRuleID;
    }

    public String getScheduleRuleName() {
        return scheduleRuleName;
    }

    public void setScheduleRuleName(String scheduleRuleName) {
        this.scheduleRuleName = scheduleRuleName;
    }

    public int getDeptID() {
        return deptID;
    }

    public void setDeptID(int deptID) {
        this.deptID = deptID;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public String getRule() {
        return rule;
    }

    public void setRule(String rule) {
        this.rule = rule;
    }
}
