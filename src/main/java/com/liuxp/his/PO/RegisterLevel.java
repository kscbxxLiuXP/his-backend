package com.liuxp.his.PO;

public class RegisterLevel {

    private int registerLevelID;
    private String registerLevelCode;
    private String registerLevelName;
    private double registerCost;
    private int registerLimit;

    public int getRegisterLevelID() {
        return registerLevelID;
    }

    public void setRegisterLevelID(int registerLevelID) {
        this.registerLevelID = registerLevelID;
    }

    public String getRegisterLevelCode() {
        return registerLevelCode;
    }

    public void setRegisterLevelCode(String registerLevelCode) {
        this.registerLevelCode = registerLevelCode;
    }

    public String getRegisterLevelName() {
        return registerLevelName;
    }

    public void setRegisterLevelName(String registerLevelName) {
        this.registerLevelName = registerLevelName;
    }

    public double getRegisterCost() {
        return registerCost;
    }

    public void setRegisterCost(double registerCost) {
        this.registerCost = registerCost;
    }

    public int getRegisterLimit() {
        return registerLimit;
    }

    public void setRegisterLimit(int registerLimit) {
        this.registerLimit = registerLimit;
    }
}
