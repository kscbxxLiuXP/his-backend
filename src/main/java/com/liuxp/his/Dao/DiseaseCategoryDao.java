package com.liuxp.his.Dao;

import com.liuxp.his.PO.DiseaseCategory;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface DiseaseCategoryDao {
    @Select("select * from diseaseCategory where diseaseCategoryID = #{id}")
    public DiseaseCategory getOne(int id);

}
