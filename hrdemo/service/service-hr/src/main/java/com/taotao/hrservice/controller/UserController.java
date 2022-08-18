package com.taotao.hrservice.controller;


import com.taotao.commonutils.R;
import com.taotao.hrservice.entity.User;
import com.taotao.hrservice.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author testjava
 * @since 2022-08-18
 */
@RestController
@RequestMapping("/hrservice/user")
public class UserController {
    @Autowired
    UserService userService;
    //添加用户
    @PostMapping("/addUser")
    public R addUser(@RequestBody User user){
        boolean flag = userService.save(user);
        if (flag){
            return R.ok();
        }else {
            return R.error();
        }
    }
}

