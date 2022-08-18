package com.taotao.hrservice.service.impl;

import com.taotao.hrservice.entity.User;
import com.taotao.hrservice.mapper.UserMapper;
import com.taotao.hrservice.service.UserService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author testjava
 * @since 2022-08-18
 */
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService {

}
