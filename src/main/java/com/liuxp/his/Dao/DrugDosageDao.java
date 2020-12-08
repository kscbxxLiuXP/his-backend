package com.liuxp.his.Dao;

import com.liuxp.his.PO.DrugDosage;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface DrugDosageDao {

    @Select("select * from drugDosage where drugDosageID = #{id}")
    public DrugDosage getOne(int id);
}
