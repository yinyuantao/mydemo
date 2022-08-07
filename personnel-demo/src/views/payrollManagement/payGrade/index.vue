<template>
  <div class="left">

    <el-button type="warning">提交</el-button>
    <el-button type="warning">返回</el-button>
    <table border="1px">
      <tr>
        <td>薪酬标准编号</td>
        <td></td>

        <td>薪酬标准名称</td>
        <td></td>
        <td>薪酬总额</td>
        <td></td>
        <td></td>
      </tr>

      <tr>
        <td>制定人</td>
        <td></td>
        <td>登记人</td>
        <td></td>
        <td>登记时间</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>备注</td>
        <td colspan="7"></td>
      </tr>
      <tr>
        <td>序号</td>
        <td colspan="3">薪酬项目名称</td>
        <td>金额</td>
        <td colspan="3"></td>
      </tr>
            <tr>
        <td>63</td>
        <td colspan="3">出差补助</td>
        <td>0.00</td>
        <td colspan="3"></td>
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