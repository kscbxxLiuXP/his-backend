package com.liuxp.his.Dao;

import com.liuxp.his.PO.PatientIndex;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface PatientIndexDao {
    public PatientIndex getOneByPatientIndexID(int patientIndexID);

    public PatientIndex getOneByRegisterID(int registerID);

    //添加一个病历，这个是在用户挂号的时候自动添加的
    public void addOne(int patientID,int registerID);

    public void updateOne(PatientIndex patientIndex);

    public void updateState(int registerID,int state);

    //删除是退号的时候要删除
    public void deleteOne(int regisertID);
}
