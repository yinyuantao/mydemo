<template>
  <div class="left">
    <el-form ref="KindList" :model="KindList" label-width="80px">
      <el-form-item label="一级机构编号">
        <el-input v-model="KindList.firstKindId"></el-input>
      </el-form-item>
      <el-form-item label="一级机构名称">
        <el-input v-model="KindList.firstKindName"></el-input>
      </el-form-item>
      <el-form-item label="薪酬发放责任人编号">
        <el-input v-model="KindList.firstKindSalaryId"></el-input>
      </el-form-item>
      <el-form-item label="销售责任人编号">
        <el-input v-model="KindList.firstKindSaleId"></el-input>
      </el-form-item>
      <el-form-item>
        <el-button type="primary" @click="addKindList">提交</el-button>
        <el-button>返回</el-button>
      </el-form-item>
    </el-form>
  </div>
</template>

<script>
import {addFirstKindList} from "@/api/api.js";
export default {
  data() {
    return {
      KindList: {
        firstKindId: "",
        firstKindName: "",
        firstKindSalaryId: "",
        firstKindSaleId: "",
      },
    };
  },
  methods: {
    addKindList() {
      addFirstKindList(this.KindList).then(function(response) {
          this.$message({
          message: "添加讲师记录成功",
          type: "success",
        });
        this.$router.push({ path: "/oneInstitution" });
      });
    },
  },
};
</script>

<style>
</style>