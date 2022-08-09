package com.taotao.hrservice.controller;


import com.taotao.commonutils.R;
import com.taotao.hrservice.entity.ConfigFileThirdKind;
import com.taotao.hrservice.service.ConfigFileThirdKindService;
import org.omg.CORBA.PUBLIC_MEMBER;
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
@RequestMapping("/hrservice/thirdKind")
@CrossOrigin
public class ConfigFileThirdKindController {
    @Autowired
    ConfigFileThirdKindService
    thirdKindService;

    //查询所有三级列表
    @GetMapping("selectAllThirdKind")
    public R selectAllThirdKind(){
        List<ConfigFileThirdKind> ThirdKindList = thirdKindService.list(null);
        if (ThirdKindList == null){
            return R.error();
        }else {
            return R.ok().data("ThirdKindList" ,ThirdKindList);
        }
    }

    //根据ID删除三级机构
    @DeleteMapping("/removeThirdKind/{id}")
    public R removeThirdKind(@RequestParam Integer id){
        boolean flag = thirdKindService.removeById(id);
        if (flag){
            return R.ok();
        }else {
            return R.error();
        }
    }

    //更新三级机构名称
    @PostMapping("/updateThirdKind")
    public R updateThirdKind (@RequestBody ConfigFileThirdKind thirdKind){
        boolean flag = thirdKindService.updateById(thirdKind);
        if (flag){
            return R.ok();
        }else {
            return R.error();
        }
    }
    //增加三级机构
    @PostMapping("/addThirdKind")
    public R addThirdKind (@RequestBody ConfigFileThirdKind thirdKind){
        boolean flag = thirdKindService.save(thirdKind);
        if (flag){
            return R.ok();
        }else {
            return R.error();
        }
    }
}

