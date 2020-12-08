package com.liuxp.his.Dao;

import com.liuxp.his.PO.Patient;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface PatientDao {
    public Patient getOne(int id);

    public void updateOne(Patient patient);

    public void insertOne(Patient patient);

}
