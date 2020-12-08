package com.liuxp.his.Dao;

import com.liuxp.his.PO.DocTitle;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface DocTitleDao {
    @Select("select * from docTitle where docTitleID = #{id}")
    public DocTitle getOne(int id);

}
