<template>
  <div class="left">
    <el-button type="warning">查询</el-button>

    <table border="1px">
      <tr>
        <td>属性种类</td>
        <td>属性名称</td>
        <td>删除</td>
      </tr>
            <tr>
        <td>国籍</td>
        <td>中国</td>
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