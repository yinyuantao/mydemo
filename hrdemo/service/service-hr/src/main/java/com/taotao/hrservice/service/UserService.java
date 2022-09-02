package com.taotao.hrservice.service;

import com.taotao.hrservice.entity.User;
import com.baomidou.mybatisplus.extension.service.IService;
import com.taotao.hrservice.entity.vo.LoginVo;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author testjava
 * @since 2022-08-18
 */
public interface UserService extends IService<User> {


  String loginUser(LoginVo loginVo);

  boolean login(String name, String password);
}
