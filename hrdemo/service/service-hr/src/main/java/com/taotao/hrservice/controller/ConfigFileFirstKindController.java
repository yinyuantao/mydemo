package com.taotao.hrservice.controller;


import com.taotao.commonutils.R;
import com.taotao.hrservice.entity.ConfigFileFirstKind;
import com.taotao.hrservice.service.ConfigFileFirstKindService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author testjava
 * @since 2022-08-02
 */
@RestController
@RequestMapping("/hrservice/first_kind")
public class ConfigFileFirstKindController {
    @Autowired
    ConfigFileFirstKindService
    kindService;

    //查询所有一级分类
    @PostMapping("/first")
    public R selectAllFirstKind(){
        List<ConfigFileFirstKind> list = kindService.selectAllList();
        return R.ok().data("first_kind_list",list);
    }

    //更改一级机构信息
    @PostMapping ("/updateFirstKind")
    public R updateById(@RequestBody ConfigFileFirstKind firstKind){
        boolean flag =  kindService.updateById(firstKind);
        System.out.println(flag);
        if (flag){
            return R.ok();
        }else {
            return R.error();
        }
    }

    //删除机构
    @GetMapping("/deleteFirstKind/{id}")
    public R removeFirstKind(@PathVariable String id){
        boolean flag = kindService.removeById(id);
        if (flag){
            return R.ok();
        }else {
            return R.error();
        }
    }

}

