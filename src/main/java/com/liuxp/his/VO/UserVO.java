package com.liuxp.his.VO;

import com.liuxp.his.PO.User;
import com.liuxp.his.PO.UserType;
import com.liuxp.his.Utils.Util;

import java.util.ArrayList;
import java.util.List;

public class UserVO {
    private int userID;
    private String username;
    private String name;//真实姓名
    private List<String> roles;
    private String usertype;
    private String token;

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<String> getRoles() {
        return roles;
    }

    public void setRoles(List<String> roles) {
        this.roles = roles;
    }

    public String getUsertype() {
        return usertype;
    }

    public void setUsertype(String usertype) {
        this.usertype = usertype;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public UserVO(User userPO, UserType userTypePO){
        this.userID=userPO.getUserID();
        this.username = userPO.getUserName();
        this.name= userPO.getRealName();
        this.roles=new ArrayList<String>();
        this.usertype=userTypePO.getTypeName();
        this.token= username;
        roles.add(Util.userType2Role(usertype));
    }

    @Override
    public String toString() {
        return "UserVO{" +
                "userID=" + userID +
                ", username='" + username + '\'' +
                ", name='" + name + '\'' +
                ", roles=" + roles +
                ", usertype='" + usertype + '\'' +
                ", token='" + token + '\'' +
                '}';
    }
}
