<template>
  <div class="left">

    <el-button type="warning">返回</el-button>
    <table border="1px">
      <tr>
        <td>姓名</td>
        <td>性别</td>
        <td>年龄</td>
        <td>职位类别</td>
        <td>职位名称</td>
        <td>毕业院校</td>
        <td>学历专业</td>
        <td>查询</td>
      </tr>

      <tr>
        <td>542</td>
        <td>涛涛</td>
        <td>男</td>
        <td>软件开发</td>
        <td>程序员</td>
        <td>民师院</td>
        <td>本科</td>
        <td>查询</td>
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
        :total="500"
      >
      </el-pagination>
    </div>
  </div>
</template>

<script>
export default {
  name: "interviewRegistration",
  methods: {
    handleSizeChange(val) {
      console.log(`每页 ${val} 条`);
    },
    handleCurrentChange(val) {
      console.log(`当前页: ${val}`);
    },
  },
  data() {
    return {
      currentPage1: 5,
      currentPage2: 5,
      currentPage3: 5,
      currentPage4: 4,
    };
  },
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