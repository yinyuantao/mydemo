package com.taotao.hrservice.controller;


import com.taotao.commonutils.R;
import com.taotao.hrservice.entity.PublicProperty;
import com.taotao.hrservice.entity.SalaryItems;
import com.taotao.hrservice.service.SalaryItemsService;
import io.swagger.annotations.ApiOperation;
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
@RequestMapping("/hrservice/salaryItems")
public class SalaryItemsController {
    @Autowired
    SalaryItemsService salaryItemsService;

    //查询所有薪酬项目
    @PostMapping("selectSalaryItems")
    public R selectSalaryItems(@RequestBody SalaryItems salaryItems){
        List<SalaryItems> SalaryItemslist = salaryItemsService.list(null);
        if (SalaryItemslist == null){
            return R.error();
        }else {
            return R.ok().data("SalaryItemslist" ,SalaryItemslist);
        }
    }

    //删除薪酬项目
    @ApiOperation(value = "逻辑删除薪酬项目")
    @DeleteMapping("{id}")
    public R removeSalaryItems(@PathVariable Integer id){
        boolean flag = salaryItemsService.removeById(id);
        if (flag){
            return R.ok();
        } else {
            return R.error();
        }
    }
}

