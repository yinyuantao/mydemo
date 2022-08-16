package com.taotao.hrservice;

import com.taotao.hrservice.entity.Work;
import com.taotao.hrservice.mapper.WorkMapper;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

@SpringBootTest
public class WorkTest {
    @Autowired
    private WorkMapper workMapper;

    @Test
    public void test(){
        List<Work> workList = workMapper.selectByName("杰伦");
        System.out.println(workList);
    }
}
