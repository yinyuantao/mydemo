package com.taotao.hrservice;

import com.taotao.hrservice.entity.Work;
import com.taotao.hrservice.entity.vo.WrokVo;
import com.taotao.hrservice.mapper.WorkMapper;
import com.taotao.hrservice.mapper.WorkVoMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;


import java.util.List;

@SpringBootTest

public class WorkTest {
    @Autowired
    private WorkVoMapper workVoMapper;

    @Test
    public void test(){
        List<WrokVo> all = workVoMapper.getAll();
        System.out.println(all);
    }
}
