package com.liuxp.his.Dao;

import com.liuxp.his.PO.RegisterLevel;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Service;

import java.util.List;

@Mapper
public interface RegisterLevelDao {
    @Select("select * from registerLevel where registerLevelID = #{registerLevelID}")
    public RegisterLevel getOne(int registerLevelID);

    @Select("select * from registerLevel")
    public List<RegisterLevel> getAll();

}
