package com.liuxp.his.Controller;

import com.alibaba.fastjson.JSONObject;
import com.liuxp.his.Model.JsonResult;
import com.liuxp.his.Service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@CrossOrigin
@RestController
public class LoginController {

    @Autowired
    private LoginService loginService;

    @PostMapping(path = "/user/login")
    public JsonResult login(@RequestBody JSONObject jsonObject) {
        String username = (String) jsonObject.get("username");
        String password = (String) jsonObject.get("password");
        return loginService.login(username, password);

    }

    @GetMapping(path = "/user/info")
    public JsonResult userInfo(@RequestParam("token") String userName){
        return loginService.userInfo(userName);
    }

    @PostMapping(path = "/user/logout")
    public JsonResult logout (){
        return new JsonResult();
    }
}
