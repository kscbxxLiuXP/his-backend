package com.liuxp.his.PO;

public class User {

    private int userID;
    private String userName;
    private String password;
    private String realName;
    private int userTypeID;
    private int participateScheduling;
    private int docTitleID;
    private int departmentID;
    private int registerLevelID;

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRealName() {
        return realName;
    }

    public void setRealName(String realName) {
        this.realName = realName;
    }

    public int getUserTypeID() {
        return userTypeID;
    }

    public void setUserTypeID(int userTypeID) {
        this.userTypeID = userTypeID;
    }

    public int getParticipateScheduling() {
        return participateScheduling;
    }

    public void setParticipateScheduling(int participateScheduling) {
        this.participateScheduling = participateScheduling;
    }

    public int getDocTitleID() {
        return docTitleID;
    }

    public void setDocTitleID(int docTitleID) {
        this.docTitleID = docTitleID;
    }

    public int getDepartmentID() {
        return departmentID;
    }

    public void setDepartmentID(int departmentID) {
        this.departmentID = departmentID;
    }

    public int getRegisterLevelID() {
        return registerLevelID;
    }

    public void setRegisterLevelID(int registerLevelID) {
        this.registerLevelID = registerLevelID;
    }
}
