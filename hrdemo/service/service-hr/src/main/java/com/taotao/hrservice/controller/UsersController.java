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

    @PostMapping(value = "/login",produces = "application/json;charset=UTF-8")
    public R loginUser (@RequestParam String name, @RequestParam String pwd){
        Users result = usersService.login(name,pwd);
      if (result != null){
          return R.ok().message("登陆成功");
      }else {
          return R.ok().message("登陆失败");
      }
    }


}

