package com.taotao.hrservice.controller;




import com.taotao.commonutils.R;
import com.taotao.hrservice.entity.Users;
import com.taotao.hrservice.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author testjava
 * @since 2022-07-31
 */
@RestController
@RequestMapping("/user")
public class UsersController {
    @Autowired UsersService usersService;

    @PostMapping("/login")
    public R loginUser (@RequestBody Users user){
        Boolean flag = usersService.findUserById(user);
        if (flag == true){
            return R.ok().message("登陆成功");

        }else {
            return R.error().message("账号密码或错误");
        }
    }


}

