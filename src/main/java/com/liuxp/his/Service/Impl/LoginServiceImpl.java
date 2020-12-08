package com.liuxp.his.Service.Impl;

import com.liuxp.his.Dao.UserDao;
import com.liuxp.his.Dao.UserTypeDao;
import com.liuxp.his.Model.JsonResult;
import com.liuxp.his.PO.User;
import com.liuxp.his.PO.UserType;
import com.liuxp.his.Service.LoginService;
import com.liuxp.his.VO.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginServiceImpl implements LoginService {

    @Autowired
    private UserDao userDao;
    @Autowired
    private UserTypeDao userTypeDao;

    /**
     * 登录服务
     *
     * @param username
     * @param password
     * @return 包装好的
     */
    @Override
    public JsonResult login(String username, String password) {
        User user = userDao.getOneByUsername(username);
        if (user == null) {
            return new JsonResult().code("1").msg("用户名不存在");
        } else {
            if (user.getPassword().equals(password)) {
                return new JsonResult().code("0").msg("success");
            } else
                return new JsonResult().code("1").msg("密码错误");
        }
    }

    @Override
    public JsonResult userInfo(String userName) {
        User user = userDao.getOneByUsername(userName);
        UserType userType = userTypeDao.getOne(user.getUserTypeID());
        UserVO userVO = new UserVO(user,userType);
        return new JsonResult().code("0").msg("success").data(userVO);
    }
}
