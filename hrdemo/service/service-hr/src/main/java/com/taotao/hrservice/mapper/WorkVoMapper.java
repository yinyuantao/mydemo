package com.taotao.hrservice.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.taotao.hrservice.entity.vo.WrokVo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface WorkVoMapper extends BaseMapper<WrokVo> {

   @Select("SELECT j.job_id,J.numbering,J.job_name,W.work_id,W.work_number,W.word_name FROM job_type AS J join `work` AS W on J.numbering = W.work_number")
   List<WrokVo> getAll();

}
