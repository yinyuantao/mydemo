<template>
  <div class="left">
    <table border="1px">
      <tr>
        <td>一级机构</td>
        <td>请选择</td>
        <td>二级机构</td>
        <td>请选择</td>
        <td>三级机构</td>
        <td>请选择</td>
        <td rowspan="5" colspan="2"></td>
      </tr>
      <tr>
        <td>职业分类</td>
        <td>销售</td>
        <td>职位名称</td>
        <td>区域经理</td>
        <td>职称</td>
        <td>工程师</td>
      </tr>
      <tr>
        <td>姓名</td>
        <td>请选择</td>
        <td>性别</td>
        <td>男</td>
        <td>Email</td>
        <td>请选择</td>
      </tr>
      <tr>
        <td>电话</td>
        <td>请选择</td>
        <td>QQ</td>
        <td>请选择</td>
        <td>手机</td>
        <td>请选择</td>
      </tr>
      <tr>
        <td>住址</td>
        <td colspan="3"></td>
        <td>邮编</td>
      </tr>
      <tr>
        <td>国籍</td>
        <td>中国</td>
        <td>出生地</td>
        <td></td>
        <td>生日</td>
        <td></td>
        <td>民族</td>
        <td>汉族</td>
      </tr>
      <tr>
        <td>宗教信仰</td>
        <td>无</td>
        <td>政治面貌</td>
        <td>群众</td>
        <td>身份证号</td>
        <td></td>
        <td>社会保障号码</td>
        <td>合并</td>
      </tr>
      <tr>
        <td>年龄</td>
        <td></td>
        <td>学历</td>
        <td>高中</td>
        <td>教育年限</td>
        <td>12</td>
        <td>学历专业</td>
        <td>生物工程</td>
      </tr>
      <tr>
        <td>薪酬标准</td>
        <td>无</td>
        <td>开户行</td>
        <td></td>
        <td>账号</td>
        <td></td>
        <td>登记人</td>
        <td>谢鹏</td>
      </tr>
      <tr>
        <td>建档时间</td>
        <td></td>
        <td>特长</td>
        <td>java</td>
        <td>爱好</td>
        <td>篮球</td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>个人履历</td>
        <td colspan="7"></td>
      </tr>
      <tr>
        <td>家庭信息关系</td>
        <td colspan="7"></td>
      </tr>
      <tr>
        <td>备注</td>
        <td colspan="7"></td>
      </tr>
    </table>
  </div>
</template>

<script>
export default {
  name: "FileManagement",
};
</script>

<style scoped lang="scss">


  .left table {
    margin-top: 30px; 
    border-collapse:collapse;
  }
  th,td { 
    border:1px solid black; 
    height: 40px;
    width: 150px;
    text-align: center;
  }

</style>