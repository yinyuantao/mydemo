package com.taotao.hrservice.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.taotao.hrservice.entity.Users;
import com.taotao.hrservice.mapper.UsersMapper;
import com.taotao.hrservice.service.UsersService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.taotao.servicebase.exceptionhandler.GuliException;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

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


    @Override
    public Users login(String name, String pwd) {
        String username = name;
        String password = pwd;
        if(StringUtils.isEmpty(username) || StringUtils.isEmpty(password)) {
            throw new GuliException(20001,"登录失败");
        }
        QueryWrapper<Users> wrapper = new QueryWrapper<>();
        wrapper.eq("u_name",username);
        Users one = baseMapper.selectOne(wrapper);
        if (one == null){
            throw new GuliException(20001,"登录失败");
        }
        if (password.equals(one.getUPassword())){
            return one;
        }else {
           throw new GuliException(20001,"登录失败");
        }


    }
}