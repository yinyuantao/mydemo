<template>
  <div class="left">
    <el-form ref="form" :model="form" label-width="80px">
      <el-form-item label="一级机构编号">
        <el-input v-model="form.name"></el-input>
      </el-form-item>
      <el-form-item label="一级机构名称">
        <el-input v-model="form.name"></el-input>
      </el-form-item>
      <el-form-item label="薪酬发放责任人编号">
        <el-input v-model="form.name"></el-input>
      </el-form-item>
      <el-form-item label="销售责任人编号">
        <el-input v-model="form.name"></el-input>
      </el-form-item>
      <el-form-item>
        <el-button type="primary" @click="onSubmit">提交</el-button>
        <el-button>返回</el-button>
      </el-form-item>
    </el-form>
  </div>
</template>

<script>
export default {
  data() {
    return {
      form: {
        name: "",
        region: "",
        date1: "",
        date2: "",
        delivery: false,
        resource: "",
        desc: "",
      },
    };
  },
  methods: {
    onSubmit() {
      console.log("submit!");
    },
  },
};
</script>

<style>
</style>