package com.liuxp.his.Dao;


import com.liuxp.his.PO.PatientPrescription;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;

import java.util.List;

@Mapper
public interface PatientPrescriptionDao {
    public PatientPrescription getOneByID(int patientPrescriptionID);

    public List<PatientPrescription> getAllByRegisterID (int registerID);

    //返回自增ID
    public void addOne(PatientPrescription patientPrescription);

    //更新状态
    public void updateState( int patientPrescriptionID,int state);

    public void updateStateByRegisterID(int registerID);

}

