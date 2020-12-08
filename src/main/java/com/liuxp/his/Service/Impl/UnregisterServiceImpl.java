package com.liuxp.his.Service.Impl;

import com.liuxp.his.Dao.PatientDao;
import com.liuxp.his.Dao.RegisterDao;
import com.liuxp.his.Dao.UserDao;
import com.liuxp.his.Model.JsonResult;
import com.liuxp.his.PO.Patient;
import com.liuxp.his.PO.Register;
import com.liuxp.his.PO.Register1;
import com.liuxp.his.Service.UnregisterService;
import com.liuxp.his.VO.RegisterVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class UnregisterServiceImpl implements UnregisterService {
    @Autowired
    private RegisterDao registerDao;
    @Autowired
    private PatientDao patientDao;
    @Autowired
    private UserDao userDao;

    @Override
    public JsonResult getAllRecord(int patientID) {
        List<Register> registerList = registerDao.getAllByPatientID(patientID);
        List<RegisterVO> registerVOList = new ArrayList<>();
        for (Register r : registerList) {
            Patient patient = patientDao.getOne(r.getPatientID());
            String doctorName = userDao.getOneByUserID(r.getDoctorUserID()).getRealName();
            String registerUserName = userDao.getOneByUserID(r.getRegisterUserID()).getRealName();
            System.out.println(r);

            RegisterVO registerVO = new RegisterVO(r, doctorName, patient, registerUserName);
            registerVOList.add(registerVO);
        }
        if (registerList.size() == 0) {
            return new JsonResult().code("1").msg("no record");
        } else {
            return new JsonResult().code("0").msg("success").data(registerVOList);
        }
    }

    @Override
    public JsonResult unRegister(int registerID) {
        System.out.println(registerID);
        registerDao.updateOne(registerID, 2);
        return new JsonResult().code("0").msg("success");
    }
}
