package com.liuxp.his.VO;


import com.liuxp.his.PO.PscriptTemplate;

/**
 * 处方模板的呈现类，主要是将科室范围转化成文本供前端使用
 */
public class PrescriptionTemplateVO {

    public int pscriptTemplateID;//前端返回给后端时的标识
    public String pscriptTemplateName;
    public String useRange;

    public PrescriptionTemplateVO(PscriptTemplate pscriptTemplate) {
        this.pscriptTemplateID =pscriptTemplate.getPscriptTemplateID();
        this.pscriptTemplateName =pscriptTemplate.getPscriptTemplateName();
        this.useRange =rangeToString(pscriptTemplate.getUseRange()) ;
    }

    public String rangeToString(int range){
        String result =  new String ();
        switch (range){
            case 1:
                result="全院";
                break;
            case 2:
                result="全科";
                break;
            case 3:
                result="个人";
                break;
        }
        return result;
    }
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

    public String getUseRange() {
        return useRange;
    }

    public void setUseRange(String useRange) {
        this.useRange = useRange;
    }
}
