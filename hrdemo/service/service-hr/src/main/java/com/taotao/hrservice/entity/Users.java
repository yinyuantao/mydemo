package com.taotao.hrservice.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
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
 * @since 2022-07-31
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@ApiModel(value="Users对象", description="")
public class Users implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "id")
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty(value = "用户编号")
    @TableField("u_id")
    private Integer uId;

    @ApiModelProperty(value = "名称")
    @TableField("u_name")
    private String uName;

    @ApiModelProperty(value = "真实姓名")
    @TableField("u_true_name")
    private String uTrueName;

    @ApiModelProperty(value = "用户密码")
    @TableField("u_password")
    private String uPassword;


}
