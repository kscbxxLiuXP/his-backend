package com.liuxp.his.Controller;


import com.alibaba.fastjson.JSONObject;
import com.liuxp.his.Dao.CostTypeDao;
import com.liuxp.his.Model.JsonResult;
import com.liuxp.his.PO.CostType;
import com.liuxp.his.PO.UserType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@CrossOrigin
@RestController
public class HelloController {

    @Autowired
    JdbcTemplate jdbcTemplate;

    @Autowired
    CostTypeDao costTypeDao;

    @ResponseBody
    @GetMapping("/query")
    public Map<String, Object> map() {
        List<Map<String, Object>> list = jdbcTemplate.queryForList("select * from user");
        return list.get(0);
    }

    @ResponseBody
    @GetMapping("/costType/{id}")
    public CostType getCostType(@PathVariable("id") int id) {

        return costTypeDao.getOne(id);
    }

    @ResponseBody
    @GetMapping("/fastjson")
    public JsonResult testJson() {
        List<CostType> costType = costTypeDao.getAll();
        return new JsonResult().code("0").msg("取出成功").data(costType);
    }


    @PostMapping(path = "/postTest")
    public void demo1(@RequestBody CostType costType) {
        System.out.println(costType.toString());
    }


    @PostMapping(path = "/test/test")
    public JsonResult test(@RequestBody JSONObject jsonObject) {
        return new JsonResult().code("0").msg("success");
    }
}
