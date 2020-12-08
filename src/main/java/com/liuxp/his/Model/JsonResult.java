package com.liuxp.his.Model;

import com.alibaba.fastjson.JSONObject;
import org.springframework.stereotype.Component;

//自定义返回JSON数据类型
@Component
public class JsonResult extends JSONObject {
    public JsonResult() {

    }

    public JsonResult code(String code) {
        this.put("code", code);
        return this;
    }

    public JsonResult msg(String message) {
        this.put("msg", message);
        return this;
    }

    public JsonResult data(Object data) {
        this.put("data", data);
        return this;
    }
}
