package com.liuxp.his.PO;

import java.util.Date;

public class Schedule {

    private int scheduleID;
    private Date scheduleDate;
    private int deptID;
    private int userID;
    private String scheduleNoon;
    private int scheduleRuleID;

    public int getScheduleID() {
        return scheduleID;
    }

    public void setScheduleID(int scheduleID) {
        this.scheduleID = scheduleID;
    }

    public Date getScheduleDate() {
        return scheduleDate;
    }

    public void setScheduleDate(Date scheduleDate) {
        this.scheduleDate = scheduleDate;
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

    public String getScheduleNoon() {
        return scheduleNoon;
    }

    public void setScheduleNoon(String scheduleNoon) {
        this.scheduleNoon = scheduleNoon;
    }

    public int getScheduleRuleID() {
        return scheduleRuleID;
    }

    public void setScheduleRuleID(int scheduleRuleID) {
        this.scheduleRuleID = scheduleRuleID;
    }
}
