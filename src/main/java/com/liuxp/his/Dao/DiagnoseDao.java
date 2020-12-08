package com.liuxp.his.Dao;

import com.liuxp.his.PO.Diagnose;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface DiagnoseDao {
    //根据诊断ID获取诊断信息
    public Diagnose getOneByID(int diagnoseID);

    //根据患者的病历号获取诊断信息
    public List<Diagnose> getByPatientIndexID(int patientIndexID);

    //根据患者的挂号ID获取诊断信息
    public List<Diagnose> getByRegisterID(int registerID);

    //新增一条诊断信息
    public void addOne(Diagnose diagnose);

    //删除一跳诊断信息，一般删除都会根据诊断ID删除
    public void delete(int diagnoseID);
}
