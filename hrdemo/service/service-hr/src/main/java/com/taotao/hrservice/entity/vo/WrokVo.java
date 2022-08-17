package com.taotao.hrservice.entity.vo;


import com.taotao.hrservice.entity.Work;
import lombok.Data;

import java.util.List;

@Data
public class WrokVo {

    private Integer id;

    private Integer numbering;

    private String  jobName;

    private List<Work> children;

}
