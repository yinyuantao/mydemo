package com.taotao.hrservice.controller;


import com.taotao.commonutils.R;
import com.taotao.hrservice.entity.JobType;
import com.taotao.hrservice.entity.User;
import com.taotao.hrservice.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

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
    //显示所有用户
    @GetMapping("showAllUser")
    public R showAllUser(){
        List<User> users = userService.list(null);
        if (users == null){
            return R.error();
        }else {
            return R.ok().data("users",users);
        }

    }

    @GetMapping("/getJobById/{id}")
    public R getJobById(@PathVariable Integer id){
        User list = userService.getById(id);
        return R.ok().data("list",list);
    }
}

