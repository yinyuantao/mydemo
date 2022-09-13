package com.taotao.hrservice.service;

import com.taotao.hrservice.entity.Work;
import com.baomidou.mybatisplus.extension.service.IService;
import com.taotao.hrservice.entity.vo.WorkVo;
import com.taotao.hrservice.mapper.WorkMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author testjava
 * @since 2022-08-23
 */
@Service
public interface WorkService extends IService<Work> {


    public List<WorkVo> WorkVoList();
}
