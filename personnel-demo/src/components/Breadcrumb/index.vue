<template>
  <div class="left">
    <div class="bread">
    <el-breadcrumb separator-class="el-icon-arrow-right">
      <el-breadcrumb-item :to="{ path: '/useList' }">首页</el-breadcrumb-item>
      <el-breadcrumb-item v-for="o in breadcrumbListData" :key="o.id"
        >{{ o.name }}
      </el-breadcrumb-item>
    </el-breadcrumb>
  </div>
  </div>
</template>

<script>


</script>

<style lang="scss" scoped>
.bread { 
    height: 200px;
    width: 200px;
    background-color: green;
    float: left;
}

.left{
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
