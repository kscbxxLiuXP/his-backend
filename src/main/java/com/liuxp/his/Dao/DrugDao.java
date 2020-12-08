package com.liuxp.his.Dao;

import com.liuxp.his.PO.Drug;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface DrugDao {
    @Select("select * from drug where drugID= #{id}")
    public Drug getOne(int id);

    @Select("select * from drug")
    public List<Drug> getAll();
}
