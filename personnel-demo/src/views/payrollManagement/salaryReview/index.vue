<template>
  <div class="left">
    <div>
      您正在做的业务是：<span>人力资源</span>--<span>人力资源档案管理</span>--<span
        >人力资源档案登记</span
      >
    </div>
    <table border="1px">
      <tr>
        <td>薪酬标准编号</td>
        <td>薪酬标准名称</td>
        <td>制定人</td>
        <td>登记时间</td>
        <td>薪酬总额</td>
        <td>复核</td>
      </tr>
      <tr>
        <td>123456</td>
        <td>薪酬标准</td>
        <td>是我</td>
        <td>2022-11-19</td>
        <td>0.0</td>
        <td>复核</td>
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