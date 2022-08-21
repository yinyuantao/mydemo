<template>
  <div class="left">
    <el-form ref="userList" :model="userList" label-width="80px">
      <el-form-item label="用户编号">
        <el-input v-model="userList.uid"></el-input>
      </el-form-item>
      <el-form-item label="用户名称">
        <el-input v-model="userList.uname"></el-input>
      </el-form-item>
      <el-form-item label="用户密码">
        <el-input v-model="userList.upassword"></el-input>
      </el-form-item>
      <el-form-item label="真实姓名">
        <el-input v-model="userList.utrueName"></el-input>
      </el-form-item>
      <el-form-item>
        <el-button type="primary" @click="saveOrUpdate">提交</el-button>
        <el-button>返回</el-button>
      </el-form-item>
    </el-form>
  </div>
</template>

<script>
import { addUsers } from "@/api/user";

export default {
  inject: ['reload'],
  data() {
    return {
      userList: {
        userId: "",
        uid: "",
        uname: "",
        upassword: "",
        utrueName: "",
        isDelete:"0"
      },
    };
  },
  methods: {
    //判断修改还是新增操作
    //根据是否有id值来判断
    saveOrUpdate() {
      if (!this.userList.userId) {
        this.adduserList();
      } else {
        this.updateKinList();
      }
    },
    //添加分类
    adduserList() {
      addUsers(this.userList).then(function (response) {

      });
      // this.$router.push({ path: "/userManagement" });
      // this.reload();
    },

    //更新分类
    updateKinList() {
      updateFirstKind(this.userList).then(function (response) {

      })
      this.$router.push({ path: "/oneInstitution" });
      this.reload();
    },

    //判断路径中是否有id值
    init() {
      if (this.$route.query && this.$route.query.ffkId) {
        const id = this.$route.query.ffkId;
        this.getInfo(id);
      } else {
        this.userList = {};
      }
    },



    //根据id查询,数据回显
    getInfo(id) {
      var thar = this;
      getInfoById(id).then(function (response) {
        thar.userList = response.data.data.list
      })
    }

  },
  created() {
    // 页面渲染之前
    this.init();
  }
};
</script>

<style>
</style>