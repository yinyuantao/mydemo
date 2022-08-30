package com.taotao.hrservice.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.taotao.hrservice.entity.Work;
import com.taotao.hrservice.entity.vo.WorkVo;
import com.taotao.hrservice.mapper.WorkMapper;
import com.taotao.hrservice.service.WorkService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author testjava
 * @since 2022-08-23
 */
@Service
public class WorkServiceImpl extends ServiceImpl<WorkMapper, Work> implements WorkService {

    @Override
    public List<WorkVo> getAllWork() {
        return null;
    }
}
