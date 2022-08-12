package com.taotao.hrservice.controller;


import com.taotao.commonutils.R;
import com.taotao.hrservice.entity.ConfigFileSecondKind;
import com.taotao.hrservice.service.ConfigFileSecondKindService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author testjava
 * @since 2022-08-03
 */
@RestController
@RequestMapping("/hrservice/secondKind")
public class ConfigFileSecondKindController {
    @Autowired
    ConfigFileSecondKindService secondKindService;

    //查询所有的二级结构
    @PostMapping("/getAllKind")
    public R getAllKind(){
        List<ConfigFileSecondKind> list = secondKindService.list(null);
        if (list == null){
            return R.error().message("没有数据");
        }else {
            return R.ok().data("secondKindList",list);
        }
    }

    //更新二级机构
    @PostMapping ("/updateSecondKind")
    public R updateSecondKind(@RequestBody ConfigFileSecondKind secondKind){
        boolean flag = secondKindService.updateById(secondKind);
        if (flag){
            return R.ok();
        }else {
            return R.error();
        }
    }

    //删除二级机构
    @DeleteMapping("/removeSecondKind/{id}")
    public R removeSecondKind(@PathVariable Integer id){
        boolean flag = secondKindService.removeById(id);
        if (flag){
            return R.ok();
        }else {
            return R.error();
        }
    }

    //增加二级机构
    @PostMapping("/addSecondKind")
    public R addSecondKind (@RequestBody ConfigFileSecondKind secondKind){
        boolean flag = secondKindService.save(secondKind);
        if (flag){
            return R.ok();
        }else {
            return R.error();
        }
    }

}

