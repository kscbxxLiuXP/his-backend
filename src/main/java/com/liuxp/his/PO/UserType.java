package com.liuxp.his.PO;

public class UserType {


    private int userTypeID;
    private String typeName;

    public int getUserTypeID() {
        return userTypeID;
    }

    public void setUserTypeID(int userTypeID) {
        this.userTypeID = userTypeID;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    public UserType(int userTypeID, String typeName) {
        this.userTypeID = userTypeID;
        this.typeName = typeName;
    }
}
