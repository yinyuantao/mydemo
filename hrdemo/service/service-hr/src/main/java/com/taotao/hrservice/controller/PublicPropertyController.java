package com.taotao.hrservice.controller;


import com.taotao.commonutils.R;
import com.taotao.hrservice.entity.PublicProperty;
import com.taotao.hrservice.service.PublicPropertyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author testjava
 * @since 2022-08-05
 */
@RestController
@RequestMapping("/hrservice/property")
public class PublicPropertyController {
    @Autowired
    PublicPropertyService propertyService;

    //删除属性
    @GetMapping("/removeProperty")
    public R removeProperty(@RequestParam Integer id){
        boolean flag = propertyService.removeById(id);
        if(flag){
            return R.ok();
        }else {
            return R.error();
        }



    }
    //增加属性
    @PostMapping("/addProperty")
    public R addProperty(@RequestBody PublicProperty property){
        boolean flag = propertyService.save(property);
        if (flag){
            return R.ok();
        }else {
            return R.error();
        }
    }
    //查询所有
    @PostMapping("selectAllProperty")
    public R selectAllThirdKind(@RequestBody PublicProperty property){
        List<PublicProperty> Propertylist = propertyService.list(null);
        if (Propertylist == null){
            return R.error();
        }else {
            return R.ok().data("ThirdKindList" ,Propertylist);
        }
    }
}

