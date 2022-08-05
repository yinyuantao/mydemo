package com.taotao.hrservice.entity;

import com.baomidou.mybatisplus.annotation.*;

import java.io.Serializable;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 * 
 * </p>
 *
 * @author testjava
 * @since 2022-08-05
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@ApiModel(value="SalaryItems对象", description="")
public class SalaryItems implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "薪酬项目id")
    @TableId(value = "sy_id", type = IdType.AUTO)
    private Integer syId;

    @ApiModelProperty(value = "薪酬项目名称")
    private String syName;

    @ApiModelProperty(value = "删除")
    @TableLogic
    private Integer isDelete;


}
