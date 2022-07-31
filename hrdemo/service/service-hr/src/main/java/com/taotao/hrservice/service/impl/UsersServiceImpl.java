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
    public Boolean findUserById(Users user) {
        String username = user.getUName();
        String password = user.getUPassword();
        if (StringUtils.isEmpty(username) || StringUtils.isEmpty(password)){
            throw  new GuliException(20001,"登陆失败没有账号或密码");
        }
        QueryWrapper<Users> wrapper = new QueryWrapper<>();
        wrapper.eq("username",username);
        Users uname = baseMapper.selectOne(wrapper);

        if (uname == null) {//没有这个手机号
            throw new GuliException(20001,"登陆失败");
        }
        if (!password.equals(uname.getUPassword())){
            throw new GuliException(20001,"密码不正确");
        }
        return true;
    }
}
