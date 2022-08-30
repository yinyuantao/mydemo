package com.taotao.hrservice.controller;


import com.taotao.commonutils.R;
import com.taotao.hrservice.entity.vo.WorkVo;
import com.taotao.hrservice.service.WorkService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author testjava
 * @since 2022-08-23
 */
@RestController
@RequestMapping("/hrservice/work")
@CrossOrigin
public class WorkController {
    @Autowired
    private WorkService workService;

    @PostMapping("getAllWork")
    public R getAllWork(){
        List<WorkVo> list = workService.getAllWork();
        return R.ok().data("list",list);
    }
}

