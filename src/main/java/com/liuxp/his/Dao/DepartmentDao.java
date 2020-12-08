package com.liuxp.his.Dao;

import com.liuxp.his.PO.Department;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface DepartmentDao {
    @Select("select * from department where deptID = #{id}")
    public Department getOneByID(int id);

    //获取所有的可以
    @Select("select * from department")
    public List<Department> getAll();

    //获取所有可以挂号的科室
    @Select("select * from department where deptCategoryID < 14")
    public List<Department> getAllDeptRegisterable();
}
