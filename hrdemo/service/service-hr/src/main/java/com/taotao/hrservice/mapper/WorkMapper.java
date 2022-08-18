package com.taotao.hrservice.mapper;

import com.taotao.hrservice.entity.Work;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.taotao.hrservice.entity.vo.WorkVo;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author testjava
 * @since 2022-08-18
 */
public interface WorkMapper extends BaseMapper<Work> {
    public WorkVo getAllByWorkId();
}
