package com.liuxp.his.Dao;

import com.liuxp.his.PO.Register;
import com.liuxp.his.PO.Register1;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;

import java.util.Date;
import java.util.List;

@Mapper
public interface RegisterDao {

    public Register getOne(int registerID);

    @Select("select *  from register where patientID = #{patientID}")
    public List<Register> getAllByPatientID(int patientID);

    public List<Register> getAllByDate(Date date);

    public List<Register> getAllUntreated(int doctorID);

    public List<Register> getAllTreated(int doctorID);

    public void addOne(Register register);

    public void updateOne(int registerID, int state);

    public Register getChargerRegister(int patientID, Date date);

    public List<Register> getRegisterByPatientID(int patientID);

    public List<Register> getRegisterByPatientIDAndState(int patientID, int state);

    @Select("update register set diagnoseState = #{state} where registerID= #{registerID}")
    public void updateState(int registerID, int state);

}
