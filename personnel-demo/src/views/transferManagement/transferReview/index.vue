<template>
  <div class="left">
    <el-button type="warning">查询</el-button>

    <table border="1px">
      <tr>
        <td>请选择员工所在一级机构</td>
        <td></td>
        <td>请选择员工所在的二级机构</td>
        <td></td>
        <td>请选择员工所在的三级机构</td>
        <td></td>
      </tr>
      <tr>
        <td>请输入建档时间</td>
        <td></td>
        <td>至</td>
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