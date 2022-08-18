package com.taotao.hrservice.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
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
 * @since 2022-08-18
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@ApiModel(value="Work对象", description="")
public class Work implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "主键")
    @TableId(value = "work_id", type = IdType.AUTO)
    private Integer workId;

    @ApiModelProperty(value = "岗位编号")
    private Integer workNumber;

    @ApiModelProperty(value = "岗位名称")
    private String wordName;

    @ApiModelProperty(value = "是否删除")
    private Integer isDelete;


}
