package com.taotao.hrservice.controller;


import com.taotao.hrservice.entity.Work;
import com.taotao.hrservice.service.WorkService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;

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
    @Autowired
    private WorkService workService;

    //连表查询




}

