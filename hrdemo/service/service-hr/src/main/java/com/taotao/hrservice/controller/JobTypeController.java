package com.taotao.hrservice.controller;


import com.taotao.commonutils.R;
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
public class JobTypeController {
    @Autowired
    JobTypeService jobTypeService;

    //查询所有分类
    @PostMapping("/selectAllJobType")
    public R selectAllJobType(){
        List<JobType> JobList = jobTypeService.list(null);
        if (JobList == null){
            return R.error();
        }else return R.ok().data("JobList",JobList);
    }

    //添加职位
    @PostMapping("/addJobType")
    public R addJobType(@RequestBody JobType jobType){
        boolean flag = jobTypeService.save(jobType);
        if (flag){
            return R.ok();
        }else {
            return R.error();
        }
    }
    //删除职位
    @GetMapping("/removeJobType")
    public R removeJobType(@RequestParam Integer id){
        boolean flag = jobTypeService.removeById(id);
        if (flag){
            return R.ok();
        }else {
            return R.error();
        }
    }
}

