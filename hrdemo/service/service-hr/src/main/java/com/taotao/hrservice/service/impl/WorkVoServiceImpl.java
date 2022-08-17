package com.taotao.hrservice.service.impl;

import com.taotao.commonutils.R;
import com.taotao.hrservice.entity.Work;
import com.taotao.hrservice.entity.vo.WrokVo;
import com.taotao.hrservice.mapper.WorkVoMapper;
import com.taotao.hrservice.service.WorkVoService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class WorkVoServiceImpl implements WorkVoService {
    @Override
    public List<WrokVo> getAllList() {
        WrokVo wrokVo = new WrokVo();
        Work work = new Work();
        wrokVo.setId(1);
        wrokVo.setNumbering(2);
        wrokVo.setJobName("销售");
        wrokVo.setChildren(Arrays.asList(work));
        work.setWorkId(1);
        work.setWorkNumber(2);
        work.setIsDelete(0);
        work.setWordName("还是销售");
        List list = new ArrayList<>();
        list.add(work);
        for (int i = 0; i < list.size(); i++) {
            System.out.println(list.get(i));
        }
        return list;
    }
}
