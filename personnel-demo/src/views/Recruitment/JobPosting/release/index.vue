<template>
  <div class="left">

    <p>当前可变更是职位发布总数：<span>2例</span></p>
    <table border="1px">
      <tr>
        <td>职位名称</td>
        <td>区域经理</td>
        <td>招聘人数</td>
        <td>发布时间</td>
        <td>截止时间</td>
        <td>申请职位</td>
      </tr>
      <tr>
        <td>区域经理</td>
        <td>软件公司</td>
        <td>3</td>
        <td>2021-08-01 12:00:00</td>
        <td>2021-08-01 12:00:00</td>
        <td><a>申请该职位</a></td>
      </tr>
    </table>
 <div class="block">
    <el-pagination
      @size-change="handleSizeChange"
      @current-change="handleCurrentChange"
      :current-page="currentPage4"
      :page-sizes="[50, 100, 150, 200]"
      :page-size="500"
      layout="total, sizes, prev, pager, next, jumper"
      :total="500">
    </el-pagination>
  </div>
  </div>
</template>

<script>
export default {
  name: "register",
    methods: {
      handleSizeChange(val) {
        console.log(`每页 ${val} 条`);
      },
      handleCurrentChange(val) {
        console.log(`当前页: ${val}`);
      }
    },
    data() {
      return {
        currentPage1: 5,
        currentPage2: 5,
        currentPage3: 5,
        currentPage4: 4
      };
    }
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