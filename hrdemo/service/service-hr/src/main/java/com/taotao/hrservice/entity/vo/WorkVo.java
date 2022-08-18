package com.taotao.hrservice.entity.vo;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.taotao.hrservice.entity.Work;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.List;

@Data
public class WorkVo {

    @ApiModelProperty(value = "职位分类主键")
    @TableId(value = "job_id", type = IdType.AUTO)
    private Integer jobId;

    @ApiModelProperty(value = "职位编号")
    private Integer numbering;

    @ApiModelProperty(value = "职位名称")
    private String jobName;

    @ApiModelProperty(value = "下面的分类")
    private List<Work> works;
}
