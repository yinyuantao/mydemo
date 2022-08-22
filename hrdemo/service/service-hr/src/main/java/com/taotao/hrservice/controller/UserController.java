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

    //根据ID更新用户
    @PostMapping("/updateUserById")
    public R updateUserById (@RequestBody User user){
        boolean flag = userService.updateById(user);
        if (flag){
            return R.ok().message("更新成功");
        }else {
            return R.error();
        }
    }
    //根据ID查询用户
    @GetMapping("/getUserById/{id}")
    public R getUserById(@PathVariable Integer id){
        User user = userService.getById(id);
        if (user == null){
            return R.error();
        }else {
            return R.ok().data("user",user);
        }
    }

    //根据ID逻辑删除用户
    @DeleteMapping("removeUserById/{id}")
    public R removeUserById (@PathVariable Integer id){
        boolean flag = userService.removeById(id);
        if (flag){
            return R.ok();
        }else {
            return R.error();
        }
    }


}

