<template>
  <div class="left">
    <el-button type="warning">查询</el-button>
    <table border="1px">
      <tr>
        <td>角色编号</td>
        <td>角色名称</td>
        <td>角色说明</td>
        <td>是否可用</td>
        <td>操作</td>
      </tr>
            <tr>
        <td>出差补助</td>
        <td>删除</td>
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