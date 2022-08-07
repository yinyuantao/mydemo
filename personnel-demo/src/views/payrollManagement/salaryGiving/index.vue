<template>
  <div class="left">

            <el-button type="warning">确定</el-button>

    <table border="1px">
      <tr>
        <td>薪酬发放方式</td>
        <td colspan="3">一级机构发放方式</td>
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