package com.taotao.hrservice.controller;


import com.taotao.commonutils.R;
import com.taotao.hrservice.entity.ConfigFileFirstKind;
import com.taotao.hrservice.entity.JobType;
import com.taotao.hrservice.service.JobTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author testjava
 * @since 2022-08-04
 */
@RestController
@RequestMapping("/hrservice/jobType")
//职位设置
public class JobTypeController {
    @Autowired
    JobTypeService jobTypeService;

    //查询所有分类
    @GetMapping("/selectAllJobType")
    public R selectAllJobType(){
        List<JobType> JobList = jobTypeService.list(null);
        if (JobList == null){
            return R.error();
        }else return R.ok().data("JobList",JobList);
    }


    //添加职位分类
    @PostMapping("/addJobType")
    public R addJobType(@RequestBody JobType jobType){
        boolean flag = jobTypeService.save(jobType);
        if (flag){
            return R.ok();
        }else {
            return R.error();
        }
    }
    //删除职位分类
    @DeleteMapping("/removeJobType/{id}")
    public R removeJobType(@PathVariable Integer id){
        boolean flag = jobTypeService.removeById(id);
        if (flag){
            return R.ok();
        }else {
            return R.error();
        }
    }
    //根据id查询
    @GetMapping("/getJobById/{id}")
    public R getJobById(@PathVariable Integer id){
        JobType list = jobTypeService.getById(id);
        return R.ok().data("list",list);
    }

    //根据ID修改
    @PostMapping("/updateById")
    public R updateById(@RequestBody JobType jobType){
        boolean flag = jobTypeService.updateById(jobType);
        if (flag){
            return R.ok();
        }else {
            return R.error();
        }
    }
}

