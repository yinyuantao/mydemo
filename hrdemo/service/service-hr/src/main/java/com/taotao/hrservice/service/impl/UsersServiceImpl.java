package com.taotao.hrservice.service.impl;

import com.taotao.hrservice.entity.Users;
import com.taotao.hrservice.mapper.UsersMapper;
import com.taotao.hrservice.service.UsersService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author testjava
 * @since 2022-07-31
 */
@Service
public class UsersServiceImpl extends ServiceImpl<UsersMapper, Users> implements UsersService {

}
