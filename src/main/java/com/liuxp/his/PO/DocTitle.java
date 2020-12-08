package com.liuxp.his.PO;

public class DocTitle {

    private int docTitleID;
    private String docTitleCode;
    private String DocTitleName;

    public int getDocTitleID() {
        return docTitleID;
    }

    public void setDocTitleID(int docTitleID) {
        this.docTitleID = docTitleID;
    }

    public String getDocTitleCode() {
        return docTitleCode;
    }

    public void setDocTitleCode(String docTitleCode) {
        this.docTitleCode = docTitleCode;
    }

    public String getDocTitleName() {
        return DocTitleName;
    }

    public void setDocTitleName(String docTitleName) {
        DocTitleName = docTitleName;
    }

    @Override
    public String toString() {
        return "DocTitle{" +
                "docTitleID=" + docTitleID +
                ", docTitleCode='" + docTitleCode + '\'' +
                ", DocTitleName='" + DocTitleName + '\'' +
                '}';
    }
}