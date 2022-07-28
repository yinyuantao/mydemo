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
        <td>薪酬项目名称</td>
        <td>删除</td>
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