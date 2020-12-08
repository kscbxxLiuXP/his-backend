package com.liuxp.his.Dao;

import com.liuxp.his.PO.PatientPrescriptionDetail;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;

import java.util.List;

@Mapper
public interface PatientPrescriptionDetailDao {
    public PatientPrescriptionDetail getOneByID(int ppDetailID);

    public List<PatientPrescriptionDetail> getAllByPrescriptionID(int patientPrescriptionID);

    public void addOne(PatientPrescriptionDetail patientPrescriptionDetail);

    public void deleteOne(int patientPrescriptionDetailID);

    public void updateOne(int patientPrescriptionDetailID, int state);


}
