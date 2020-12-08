package com.liuxp.his.Dao;

import com.liuxp.his.PO.PscriptTemplate;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface PscriptTemplateDao {

    @Select("select * from pscriptTemplate where pscriptTemplateID = #{id}")
    public PscriptTemplate getOne(int id);

    @Select("select * from pscriptTemplate")
    public List<PscriptTemplate> getAll();
}
