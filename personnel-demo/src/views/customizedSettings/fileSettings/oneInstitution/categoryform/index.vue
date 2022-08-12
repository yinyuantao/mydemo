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
        <el-button type="primary" @click="updateKinnList">提交</el-button>
        <el-button>返回</el-button>
      </el-form-item>
    </el-form>
  </div>
</template>

<script>
import { addFirstKindList } from "@/api/api.js";
import { updateFirstKind } from "@/api/api";

export default {
  inject: ['reload'],
  data() {
    return {
      KindList: {
        ffkId: "",
        firstKindId: "",
        firstKindName: "",
        firstKindSalaryId: "",
        firstKindSaleId: "",
      },
    };
  },
  methods: {
    //判断修改还是新增操作
    //根据是否有id值来判断
    saveOrUpdate() {
      if (!this.KindList.firstKindId == null) {
        this.addKindList();
      } else {
        this.updateKinnList();
      }
    },
    //添加分类
    addKindList() {
      addFirstKindList(this.KindList).then(function (response) {
        this.$message({
          message: "添加一级分类",
          type: "success",
        });
      });
      this.$router.push({ path: "/oneInstitution" });
      this.reload();
    },

    //更新分类
    updateKinnList() {
      updateFirstKind(this.KindList).then(function (response) {
        this.$message({
          message: "修改讲师成功",
          type: "success",
        });
      })
      // this.$router.push({ path: "/oneInstitution" });
      // this.reload();
    }


  },
};
</script>

<style>
</style>