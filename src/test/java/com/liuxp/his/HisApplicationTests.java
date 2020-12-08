package com.liuxp.his;

import com.liuxp.his.Dao.CostTypeDao;
import com.liuxp.his.Dao.RegisterDao;
import com.liuxp.his.Utils.Util;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;

@SpringBootTest
class HisApplicationTests {

    @Autowired
    DataSource dataSource;

    @Autowired
    CostTypeDao costTypeDao;

    @Autowired
    RegisterDao registerDao;


    @Test
    void contextLoads() throws SQLException {


        System.out.println(dataSource.getClass());

        Connection connection = dataSource.getConnection();
        System.out.println(connection);
        connection.close();
    }

    @Test
    void testDao()
    {
        registerDao.updateState(600602,0);
        System.out.println(costTypeDao.getOne(0));
    }

    @Test
    void testUtil(){
        System.out.println(Util.userType2Role("检查医师"));
    }

}
