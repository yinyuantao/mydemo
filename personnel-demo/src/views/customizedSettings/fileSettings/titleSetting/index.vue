<template>
  <div class="left">
    <el-button type="text" size="small">
      <router-link to="/titleSetting/jobTypeFrom">添加</router-link>
    </el-button>
    <el-table :data="JobTitleData" align="left" height="100%" v-if="$route.meta.oneKindShow">
      <el-table-column prop="numbering" label="职称编号" width="150">
      </el-table-column>
      <el-table-column prop="jobName" label="职称名称" width="150">
      </el-table-column>
      <el-table-column fixed="right" label="操作" width="150">
        <template slot-scope="scope">
          <el-button @click="handleClick(scope.row)" type="text" size="small">修改</el-button>
          <el-button @click="removeJobList(scope.row)" type="text" size="small">删除</el-button>
        </template>
      </el-table-column>
    </el-table>

    <router-view></router-view>


  </div>
</template>

<script>
import { selectAllJobType } from "@/api/api.js";
import { removeJobType } from "@/api/api.js";


export default {
  name: "titleSetting",
  inject: ['reload'],
  data() {
    return {
      JobTitleData: [
        {
          jobId: "",
          jobName: "",
          numbering: "",
        },
      ],
    };
  },
  methods: {
    handleClick(row) {
      var jobId = row.jobId
      this.$router.push({
        path: "/titleSetting/jobTypeFrom",
        query: {
          "jobId": jobId
        }
      });
    },

    showAllJobType() {
      var that = this;
      selectAllJobType().then(function (response) {
        that.JobTitleData = response.data.data.JobList;
      });
    },
    //删除
    removeJobList(row) {
      var id = row.jobId;
      removeJobType(id).then(function (response) {
      });
      this.reload();
    },
  },
  created() {
    this.showAllJobType();
  },
  watch: {
    $route(to, from) {
      let ThisPage = to.name;
      if (ThisPage === 'jobTypeFrom') { //检测组件名字是否等于jobTypeFrom 是的话显示，不是隐藏
        this.oneKindShow = false;
      } else {
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