package com.taotao.hrservice;


import com.taotao.hrservice.entity.Work;
import com.taotao.hrservice.mapper.WorkMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;


import java.util.ArrayList;
import java.util.List;

@SpringBootTest

public class WorkTest {
    @Autowired
    WorkMapper workMapper;

    @Test
    public void getAll(){
        Integer id = 1;
        Work byWorkIdWork = workMapper.getByWorkIdWork(id);
        List list = new ArrayList<>();
        list.add(byWorkIdWork);
        for (int i = 0; i < list.size(); i++) {
            System.out.println(list.get(i));
        }
        System.out.println(byWorkIdWork);
    }
}
