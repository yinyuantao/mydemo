<template>
  <div class="left">
   <el-button type="text" size="small" ><router-link to="/userManagement/userfrom">添加</router-link></el-button>

    <el-table :data="userData" align="left" height="100%" v-if="$route.meta.oneKindShow">
      <el-table-column prop="uid" label="用户编号" width="150">
      </el-table-column>
      <el-table-column prop="uname" label="用户名称" width="150">
      </el-table-column>
      <el-table-column
        prop="utrueName"
        label="真实姓名"
        width="150"
      >
      </el-table-column>

      <el-table-column
        prop="upassword"
        label="用户密码"
        width="150"
      >
      </el-table-column>
      <el-table-column fixed="right" label="操作" width="150">
        <template slot-scope="scope">
          <el-button @click="handleClick(scope.row)" type="text" size="small"
            >修改</el-button
          >
            <!-- </router-link> -->
          <el-button
            @click="removeUserList(scope.row)"
            type="text"
            size="small"
            >删除</el-button
          >
        </template>
      </el-table-column>
    </el-table>

    <router-view v-if="this.$route.meta.kindShow"></router-view>

  
  </div>
</template>

<script>
import {getuser} from '@/api/user.js'
import { deleteUserINfo } from "@/api/user";


export default {
  name: "userManagement",
  inject:['reload'],
  data() {
    return {
      userData: [
        {
          userId: "",
          uid: "",
          uname: "",
          upassword: "",
          utrueName: "",
          isDelete: "0",
        },
      ],
    };
  },
  methods: {
    handleClick(row) {
      var userId = row.userId
      console.log(userId);
      this.$router.push({ 
        path: "/userManagement/userfrom" ,
        query: { 
          "userId":userId
        }
        });
    },

    showUser() {
      var that = this;
      getuser().then(function (response) {
        that.userData = response.data.data.users;
      });
    },
    //删除
    removeUserList(row) {
      var id = row.userId;
      deleteUserINfo(id).then(function (response) {
      });
    this.reload();
    },
  },
  created() {
    this.showUser();
    console.log();
  },
  watch: { 
      $route(to, from) {
        let ThisPage = to.name;
        if(ThisPage === 'fromname'){ //检测组件名字是否等于fromname 是的话显示，不是隐藏
          this.oneKindShow = false;
        }else{ 
          this.oneKindShow = true;
        }
    }
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
  height: 40px;
  width: 150px;
  text-align: center;
}

/deep/ .el-table .el-table__cell {
  text-align: center;
}

</style>