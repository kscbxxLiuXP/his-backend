package com.liuxp.his.Dao;

import com.liuxp.his.PO.PscriptTemplateDetail;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface PscriptTemplateDetailDao {
    @Select("select * from PscriptTemplateDetail where pscriptTemplateID = #{pscriptionTemplateID}")
    public List<PscriptTemplateDetail> getAll(int pscriptionTemplateID);
}
