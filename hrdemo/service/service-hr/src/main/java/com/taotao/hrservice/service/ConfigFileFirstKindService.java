package com.taotao.hrservice.service;

import com.taotao.hrservice.entity.ConfigFileFirstKind;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author testjava
 * @since 2022-08-02
 */
public interface ConfigFileFirstKindService extends IService<ConfigFileFirstKind> {

    List<ConfigFileFirstKind> selectAllList();

}
