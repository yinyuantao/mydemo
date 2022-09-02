package com.taotao.hrservice.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.taotao.commonutils.JwtUtils;
import com.taotao.hrservice.entity.User;
import com.taotao.hrservice.entity.vo.LoginVo;
import com.taotao.hrservice.mapper.UserMapper;
import com.taotao.hrservice.service.UserService;
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
 * @since 2022-08-18
 */
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService {


    @Override
    public String loginUser(LoginVo loginVo) {
        String name = loginVo.getName();
        String password = loginVo.getPassword();
        if (StringUtils.isEmpty(name)||StringUtils.isEmpty(password)){
            throw new GuliException(20001,"输入不能为空");
        }
        QueryWrapper wrapper = new QueryWrapper<>();
        wrapper.eq("name",name);
        User user = baseMapper.selectOne(wrapper);
        if (user ==null){
            throw new GuliException(20001,"账号不存在");
        }
        if (password.equals(user.getUPassword())){
            throw new GuliException(20001,"密码错误!");
        }
        String token = JwtUtils.getJwtToken(user.getUserId(),user.getUName());
        return token;
    }

    @Override
    public boolean login(String name, String password) {
        return false;
    }
}
