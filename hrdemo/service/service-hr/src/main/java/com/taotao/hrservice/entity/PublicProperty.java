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
@ApiModel(value="PublicProperty对象", description="")
public class PublicProperty implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "主键ID")
    @TableId(value = "p_id", type = IdType.AUTO)
    private Integer pId;

    @ApiModelProperty(value = "类别")
    private String pType;

    @ApiModelProperty(value = "名称")
    private String pName;

    @ApiModelProperty(value = "删除结果")
    @TableLogic(value = "1", delval = "0")
    @TableField(fill = FieldFill.INSERT)
    private Integer deleteFlag;


}
