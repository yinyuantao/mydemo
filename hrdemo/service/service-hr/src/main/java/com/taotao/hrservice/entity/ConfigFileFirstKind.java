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
 * @since 2022-08-02
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@ApiModel(value="ConfigFileFirstKind对象", description="")
public class ConfigFileFirstKind implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "主键")
    @TableId(value = "ffk_id", type = IdType.AUTO)
    private Integer ffkId;

    @ApiModelProperty(value = "一级机构编号")
    private String firstKindId;

    @ApiModelProperty(value = "一级机构名称")
    private String firstKindName;

    @ApiModelProperty(value = "薪酬发放责任人")
    private Integer firstKindSalaryId;

    @ApiModelProperty(value = "销售责任人")
    private Integer firstKindSaleId;



}
