package com.yhyr.mybatis.dynamic.datasource;

/**
 * @Description:
 * @Author: Winston Yang
 * @Date: Create in 14:41 2018/8/6
 * @Modified by:
 */

public class DataSourceContextHolder {
    private static final ThreadLocal<String> contextHolder = new ThreadLocal<String>();

    public static synchronized void setDBType(String dbType){
        contextHolder.set(dbType);
    }

    public static String getDBType(){
        return contextHolder.get();
    }

    public static void clearDBType(){
        contextHolder.remove();
    }
}
