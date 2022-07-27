<template>
  <div class="left">
    <div>
      您正在做的业务是：<span>人力资源</span>--<span>人力资源档案管理</span>--<span
        >人力资源档案登记</span
      >
    </div>
    <el-button type="warning">开始</el-button>
    <table border="1px">
      <tr>
        <td>请选择职位分类</td>
        <td>请选择</td>
        <td>请选择</td>
        <td>发布时间</td>
      </tr>
      <tr>
        <td>请输入关键字</td>
        <td colspan="4"><input type="text" /></td>
      </tr>
      <tr>
        <td>请输入登记时间</td>
        <td></td>
        <td>至</td>
        <td></td>
        <td>(YYYY-MM-DD)</td>
      </tr>
    </table>
  </div>
</template>

<script>
export default {
  name: "ResumeScreening",
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