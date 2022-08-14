package com.taotao.servicebase.handler;

import com.baomidou.mybatisplus.core.handlers.MetaObjectHandler;
import org.apache.ibatis.reflection.MetaObject;
import org.springframework.stereotype.Component;

import java.util.Date;

@Component
public class MyMetaObjectHandler implements MetaObjectHandler {
    @Override
    public void insertFill(MetaObject metaObject) {
        Integer moren = 0;
        //属性名称，不是字段名称
        this.setFieldValByName("gmtCreate", new Date(), metaObject);
        this.setFieldValByName("gmtModified", new Date(), metaObject);
        this.setFieldValByName("deleteFlag",0,metaObject);
        this.setFieldValByName("isDelete",0,metaObject);
    }

    @Override
    public void updateFill(MetaObject metaObject) {

        this.setFieldValByName("gmtModified", new Date(), metaObject);
    }
}
