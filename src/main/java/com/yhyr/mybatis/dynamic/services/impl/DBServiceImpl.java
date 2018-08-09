package com.yhyr.mybatis.dynamic.services.impl;

import com.yhyr.mybatis.dynamic.domain.DBInfo;
import com.yhyr.mybatis.dynamic.mapper.DBInfoMapper;
import com.yhyr.mybatis.dynamic.services.DBService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @Description:
 * @Author: Winston Yang
 * @Date: Create in 14:41 2018/8/6
 * @Modified by:
 */

@Service
public class DBServiceImpl implements DBService {
    @Autowired
    DBInfoMapper dbInfoMapper;

    @Override
    public DBInfo getDBInfoByDBName(String dbname) {
        return dbInfoMapper.getDBInfoByDBName(dbname);
    }
}
