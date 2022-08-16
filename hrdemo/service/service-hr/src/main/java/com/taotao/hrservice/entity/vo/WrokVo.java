package com.taotao.hrservice.entity.vo;


import lombok.Data;

import java.util.List;

@Data
public class WrokVo {

    private Integer id;

    private Integer numbering;

    private String  jobName;

    private List<WrokVo> children;

}
