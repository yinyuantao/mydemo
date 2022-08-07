<template>
  <div class="left">
    <el-button type="warning">查询</el-button>

    <table border="1px">
      <tr>
        <td>一级机构编号</td>
        <td>二级机构编号</td>
        <td>二级机构名称</td>
        <td>三级机构名称</td>
        <td>销售责任人编号</td>
        <td>是否为零售店</td>
        <td>变更</td>
        <td>删除</td>
      </tr>
            <tr>
        <td>集团</td>
        <td>集团</td>
        <td>湖南小区</td>
        <td>哈哈</td>
        <td>经理级别</td>
        <td>涛涛</td>
        <td>审核</td>
      </tr>
      
    </table>
  </div>
</template>

<script>
export default {
  name: "transferRegistration",
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