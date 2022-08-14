package com.taotao.hrservice.controller;


import com.taotao.commonutils.R;
import com.taotao.hrservice.entity.JobType;
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
    @GetMapping("/selectSalaryItems")
    public R selectSalaryItems(){
        List<SalaryItems> salaryItems = salaryItemsService.list(null);
        if (salaryItems == null){
            return R.error();
        }else return R.ok().data("salaryItems",salaryItems);
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

    //新增薪酬项目
    @PostMapping("addSalary")
    public R addSalary (@RequestBody SalaryItems salaryItems){
        boolean flag = salaryItemsService.save(salaryItems);
        if (flag){
            return R.ok();
        }else {
            return R.error();
        }
    }
}

