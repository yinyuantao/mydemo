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
        <td>招聘类型</td>
        <td>请选择</td>
      </tr>
      <tr>
        <td>职业分类</td>
        <td>销售</td>
        <td>职位名称</td>
        <td>区域经理</td>
        <td>招聘人数</td>
         <td>请选择</td>
        <td>截止日期</td>
        <td>请选择</td>
      </tr>
      <tr>
        <td>登记人</td>
        <td>admin</td>
        <td>登记时间</td>
        <td>男</td>
      </tr>
      <tr>
        <td>职位描述</td>
        <td colspan="7"></td>
      </tr>
      <tr>
        <td>招聘要求</td>
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