package com.yhyr.mybatis.dynamic.services;

import com.yhyr.mybatis.dynamic.domain.DBInfo;

/**
 * @Description:
 * @Author: Winston Yang
 * @Date: Create in 14:41 2018/8/6
 * @Modified by:
 */

public interface DBService {
     DBInfo getDBInfoByDBName(String dbname);
}
