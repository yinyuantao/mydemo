package com.taotao.hrservice.mapper;

import com.taotao.hrservice.entity.Work;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.taotao.hrservice.entity.vo.WorkVo;
import org.springframework.stereotype.Repository;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author testjava
 * @since 2022-08-23
 */
@Repository
public interface WorkMapper extends BaseMapper<Work> {
    WorkVo getAllWorks();

    Work getByWorkIdWork(Integer id);
}
