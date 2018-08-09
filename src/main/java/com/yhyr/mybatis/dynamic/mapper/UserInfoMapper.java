package com.yhyr.mybatis.dynamic.mapper;

import com.yhyr.mybatis.dynamic.domain.UserDO;


/**
 * @Description:
 * @Author: Winston Yang
 * @Date: Create in 14:41 2018/8/6
 * @Modified by:
 */

public interface UserInfoMapper {
    UserDO get(int id);
}
