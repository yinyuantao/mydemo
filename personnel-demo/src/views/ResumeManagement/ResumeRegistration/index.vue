<template>
  <div class="left">
    <div>您正在做的业务是：<span>人力资源</span>--<span>人力资源档案管理</span>--<span>人力资源档案登记</span></div>
    <table border="1px">
      <tr>
        <td>职业分类</td>
        <td>销售</td>
        <td>职位名称</td>
        <td>区域经理</td>
        <td>招聘类型</td>
        <td>工程师</td>
         <td rowspan="6" colspan="2"></td>
      </tr>
      <tr>
        <td>姓名</td>
        <td></td>
        <td>性别</td>
        <td>男</td>
        <td>Email</td>
        <td></td>
      </tr>
      <tr>
        <td>电话</td>
        <td></td>
        <td>QQ</td>
        <td></td>
        <td>手机</td>
        <td></td>
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
      </tr>
      <tr>
        <td>民族</td>
        <td>汉族</td>
        <td>宗教信仰</td>
        <td>无</td>
        <td>政治面貌</td>
        <td>群众</td>
      </tr>
      <tr>
        <td>身份证号</td>
                <td></td>
        <td>年龄</td>
        <td></td>
        <td>毕业院校</td>
        <td></td>
        <td>学历</td>
        <td>请选择</td>
      </tr>
      <tr>
        <td>教育年限</td>
        <td>请选择</td>
        <td>学历专业</td>
        <td>请选择</td>
        <td>薪酬要求</td>
        <td></td>
        <td>注册时间</td>
        <td>2021.。。。</td>
      </tr>
      <tr>
        <td>特长</td>
        <td>java</td>
        <td>爱好</td>
        <td>篮球</td>
        <td></td>
        <td></td>
                <td></td>
        <td></td>
      </tr>
      <tr>
        <td>个人履历</td>
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
  name: "ResumeRegistration",
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