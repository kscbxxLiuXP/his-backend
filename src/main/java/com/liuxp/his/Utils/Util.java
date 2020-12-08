package com.liuxp.his.Utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

public class Util {
    /**
     * 将用户的类型转化成前端能够识别的role
     * 超级管理员=>admin
     *
     * @param userType
     * @return
     */
    public static String userType2Role(String userType) {
        String role = new String();
        switch (userType) {
            case "管理员":
                role = "admin";
                break;
            case "挂号员":
                role = "ghy";
                break;
            case "医生":
                role = "doctor";
                break;
            case "检查医师":
                role = "checker";
                break;
            case "药房人员":
                role = "pharmacy";
            default:
                role = "admin";
        }
        return role;
    }

    public static Date dateFormat(String date) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        try {
            return simpleDateFormat.parse(date);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static Date string2Datetime(String date) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        try {
            return simpleDateFormat.parse(date);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static String dateTime2String(Date date) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return simpleDateFormat.format(date);
    }
    public static String date2String(Date date) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        return simpleDateFormat.format(date);
    }
    public static Date addOneDay(Date date) {

        Calendar calendar = new GregorianCalendar();
        calendar.setTime(date);

        calendar.add(calendar.DATE, 1); //把日期往后增加一天,整数  往后推,负数往前移动
        date = calendar.getTime(); //这个时间就是日期往后推一天的结果
        return date;
    }

    public static Date dateTimeFormat(String dateTime) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        try {
            return simpleDateFormat.parse(dateTime);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return null;
    }


}
