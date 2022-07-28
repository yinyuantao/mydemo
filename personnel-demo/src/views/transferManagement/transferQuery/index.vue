<template>
  <div class="left">
    <el-button type="warning">查询</el-button>
    <div>
      您正在做的业务是：<span>人力资源</span>--<span>人力资源档案管理</span>--<span
        >人力资源档案登记</span
      >
    </div>
    <table border="1px">
      <tr>
        <td>请选择员工所在一级机构</td>
        <td></td>
      </tr>
      <tr>
        <td>请选择员工所在二级机构</td>
        <td></td>
      </tr>
      <tr>
        <td>请选择员工所在三级机构</td>
        <td></td>
      </tr>
            <tr>
        <td>请选择职位分类</td>
        <td></td>
      </tr>
            <tr>
        <td>请选择职位名称</td>
        <td></td>
      </tr>
            <tr>
        <td>请输入建档时间</td>
        <td></td>
      </tr>
    </table>
  </div>
</template>

<script>
export default {
  name: "interviewRegistration",
};
</script>

<style scoped lang="scss">
.left table {
  margin-top: 30px;
  border-collapse: collapse;
  text-align: center;
}
th,
td {
  border: 1px solid black;
  height: 40px;
  width: 150px;
  text-align: center;
}
</style>