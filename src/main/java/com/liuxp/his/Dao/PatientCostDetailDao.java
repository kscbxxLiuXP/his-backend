package com.liuxp.his.Dao;

import com.liuxp.his.PO.PatientCostDetail;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface PatientCostDetailDao {

    public void addOne(PatientCostDetail patientCostDetail);


}
