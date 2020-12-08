package com.liuxp.his.Dao;

import com.liuxp.his.PO.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface UserDao {
    @Select("select * from user where userID = #{userID}")
    public User getOneByUserID(int userID);

    @Select("select * from user where userName = #{userName}")
    public User getOneByUsername(String userName);

    @Select("select * from user")
    public List<User> getAllUser();

    @Select("select * from user where userTypeID = 3")
    public List<User> getAllDoctor();
}
