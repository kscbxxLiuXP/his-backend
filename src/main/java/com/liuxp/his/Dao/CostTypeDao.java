package com.liuxp.his.Dao;

import com.liuxp.his.PO.CostType;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface CostTypeDao {

//    @Select("select * from costtype where costTypeID = #{id}")
    public CostType getOne(int id);

    public List<CostType> getAll();
}
