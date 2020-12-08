package com.liuxp.his.Service;

import com.liuxp.his.Model.JsonResult;

public interface UnregisterService {

    public JsonResult getAllRecord(int patientID);

    public JsonResult unRegister(int registerID);


}
