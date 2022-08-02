package com.taotao.hrservice.service.impl;

import com.taotao.hrservice.entity.ConfigFileFirstKind;
import com.taotao.hrservice.mapper.ConfigFileFirstKindMapper;
import com.taotao.hrservice.service.ConfigFileFirstKindService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author testjava
 * @since 2022-08-02
 */
@Service
public class ConfigFileFirstKindServiceImpl extends ServiceImpl<ConfigFileFirstKindMapper, ConfigFileFirstKind> implements ConfigFileFirstKindService {

    //查询所有一级分类
    @Override
    public List<ConfigFileFirstKind> selectAllList() {
        List<ConfigFileFirstKind> list = baseMapper.selectList(null);
        return list;
    }
}
