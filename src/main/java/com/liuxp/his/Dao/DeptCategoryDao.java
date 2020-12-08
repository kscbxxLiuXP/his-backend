package com.liuxp.his.Dao;

import com.liuxp.his.PO.DeptCategory;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface DeptCategoryDao {

    @Select("select * from deptCategory where deptCategoryID = #{id}")
    public DeptCategory getOne(int id);
}
