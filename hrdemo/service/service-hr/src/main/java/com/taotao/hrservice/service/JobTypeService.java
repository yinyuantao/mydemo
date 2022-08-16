package com.taotao.hrservice.service;

import com.taotao.hrservice.entity.JobType;
import com.baomidou.mybatisplus.extension.service.IService;
import com.taotao.hrservice.entity.vo.WrokVo;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author testjava
 * @since 2022-08-04
 */
public interface JobTypeService extends IService<JobType> {

    List<WrokVo> getAllWorkList();
}
