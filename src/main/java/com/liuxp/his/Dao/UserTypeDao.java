package com.liuxp.his.Dao;

import com.liuxp.his.PO.UserType;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface UserTypeDao {
    @Select("select  * from userType where userTypeID = #{userTypeID}")
    public UserType getOne(int userTypeID);

    @Select("select * from userType")
    public List<UserType> getAll();
}
