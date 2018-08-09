package com.yhyr.mybatis.dynamic.services.impl;

import com.yhyr.mybatis.dynamic.domain.UserDO;
import com.yhyr.mybatis.dynamic.mapper.UserInfoMapper;
import com.yhyr.mybatis.dynamic.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @Description:
 * @Author: Winston Yang
 * @Date: Create in 14:41 2018/8/6
 * @Modified by:
 */

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserInfoMapper userInfoMapper;

    @Override
    public UserDO get(int id) {
        return userInfoMapper.get(id);
    }
}
