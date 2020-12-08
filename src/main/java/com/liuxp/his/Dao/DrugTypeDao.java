package com.liuxp.his.Dao;

import com.liuxp.his.PO.DrugType;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface DrugTypeDao {
    @Select("select * from drugType where drugTypeID =id")
    public DrugType getOne(int id);
}
