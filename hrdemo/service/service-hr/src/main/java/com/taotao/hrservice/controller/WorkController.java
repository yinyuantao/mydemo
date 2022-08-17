package com.taotao.hrservice.controller;


import com.taotao.commonutils.R;

import com.taotao.hrservice.entity.Work;
import com.taotao.hrservice.entity.vo.WrokVo;
import com.taotao.hrservice.service.WorkService;
import com.taotao.hrservice.service.WorkVoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;

import java.util.Arrays;
import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author testjava
 * @since 2022-08-14
 */
@RestController
@RequestMapping("/hrservice/work")
@CrossOrigin
public class WorkController {
    @Autowired(required = false)
    private WorkVoService workVoService;

    //连表查询
    @GetMapping("/getAllWork")
    public R getAllWork (){
        List<WrokVo> allList = workVoService.getAllList();
        System.out.println(allList);
        return R.ok().data("allList",allList);
//        WrokVo wrokVo = new WrokVo();
//        Work work = new Work();
//        wrokVo.setId(1);
//        wrokVo.setNumbering(2);
//        wrokVo.setJobName("销售");
//        wrokVo.setChildren(Arrays.asList(work));
//        work.setWorkId(1);
//        work.setWorkNumber(2);
//        work.setIsDelete(0);
//        work.setWordName("还是销售");
//        return R.ok().data("wrokVo",wrokVo);
    }



}

