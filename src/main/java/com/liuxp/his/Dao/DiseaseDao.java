package com.liuxp.his.Dao;

import com.liuxp.his.PO.Disease;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface DiseaseDao {
    @Select("select * from disease where diseaseID = #{id}")
    public Disease getOne(int id);

    @Select("select * from disease")
    public List<Disease> getAll();
}
