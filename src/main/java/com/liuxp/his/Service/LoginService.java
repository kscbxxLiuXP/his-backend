package com.liuxp.his.Service;

import com.liuxp.his.Model.JsonResult;

public interface LoginService {

    JsonResult login(String username,String password);

    JsonResult userInfo(String userName);
}
