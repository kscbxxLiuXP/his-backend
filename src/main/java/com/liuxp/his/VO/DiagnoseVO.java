package com.liuxp.his.VO;

import com.liuxp.his.PO.Diagnose;
import com.liuxp.his.PO.Disease;
import com.liuxp.his.Utils.Util;

public class DiagnoseVO {
    public int diagnoseID;
    public String ICDCode;
    public String diseaseName;
    public String diseaseTime;

    public DiagnoseVO(Diagnose diagnose, Disease disease) {
        this.diagnoseID = diagnose.getDiagnoseID();
        this.diseaseName = disease.getDiseaseName();
        this.diseaseTime = Util.dateTime2String(diagnose.getDiseaseTime());
        this.ICDCode=disease.getDiseaseICDCode();
    }

    public int getDiagnoseID() {
        return diagnoseID;
    }

    public void setDiagnoseID(int diagnoseID) {
        this.diagnoseID = diagnoseID;
    }

    public String getDiseaseName() {
        return diseaseName;
    }

    public void setDiseaseName(String diseaseName) {
        this.diseaseName = diseaseName;
    }

    public String getDiseaseTime() {
        return diseaseTime;
    }

    public void setDiseaseTime(String diseaseTime) {
        this.diseaseTime = diseaseTime;
    }
}
