package com.taotao.hrservice.service;

import com.taotao.hrservice.entity.Users;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author testjava
 * @since 2022-07-31
 */
public interface UsersService extends IService<Users> {


    Boolean findUserById(Users user);
}
