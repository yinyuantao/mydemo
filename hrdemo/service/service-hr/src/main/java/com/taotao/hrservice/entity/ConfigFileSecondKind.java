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
 * @since 2022-08-03
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@ApiModel(value="ConfigFileSecondKind对象", description="")
public class ConfigFileSecondKind implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "二级机构id")
    @TableId(value = "fsk_id", type = IdType.AUTO)
    private Integer fskId;

    @ApiModelProperty(value = "一级机构编号")
    private String firstKindId;

    @ApiModelProperty(value = "一级机构名称")
    private String firstKindName;

    @ApiModelProperty(value = "二级机构编号")
    private String secondKindId;

    @ApiModelProperty(value = "二级机构名称")
    private String secondKindName;

    @ApiModelProperty(value = "薪酬发放责任人")
    private String secondSalaryId;

    @ApiModelProperty(value = "销售责任人编号")
    private String secondSaleId;


}
