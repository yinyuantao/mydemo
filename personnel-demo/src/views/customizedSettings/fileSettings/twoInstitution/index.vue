<template>
  <div class="left">
   <el-button type="text" size="small" ><router-link to="/oneInstitution/categoryform">添加</router-link></el-button>

    <el-table :data="tableData" align="left" height="100%" v-if="$route.meta.oneKindShow">
      <el-table-column prop="firstKindId" label="一级机构编号" width="150">
      </el-table-column>
      <el-table-column prop="firstKindName" label="一级机构名称" width="150">
      </el-table-column>
      <el-table-column
        prop="firstKindSalaryId"
        label="薪酬发放责任人编号"
        width="150"
      >
      </el-table-column>
      <el-table-column
        prop="firstKindSaleId"
        label="销售责任人编号"
        width="150"
      >
      </el-table-column>
      <el-table-column fixed="right" label="操作" width="150">
        <template slot-scope="scope">
          <!-- <router-link :to="'/oneInstitution/categoryform/' + scope.row.firstKindSalaryId"> -->
          <el-button @click="handleClick(scope.row)" type="text" size="small"
            >修改</el-button
          >
            <!-- </router-link> -->
          <el-button
        
            @click="removeFirstKindList(scope.row)"
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
import { getFirstKindList } from "@/api/api.js";
import { deleteFirstKindList } from "@/api/api.js";

export default {
  name: "transferRegistration",
  inject:['reload'],
  data() {
    return {
      tableData: [
        {
          ffkId: "",
          firstKindId: "",
          firstKindName: "",
          firstKindSalaryId: "",
          firstKindSaleId: "",
        },
      ],
    };
  },
  methods: {
    handleClick(row) {
      var ffid = row.ffkId
      console.log(ffid);
      this.$router.push({ 
        path: "/oneInstitution/categoryform" ,
        query: { 
          "ffkId":ffid
        }
        });
    },

    showFirstKindList() {
      var that = this;
      getFirstKindList().then(function (response) {
        that.tableData = response.data.data.first_kind_list;
      });
    },
    //删除
    removeFirstKindList(row) {
      var id = row.ffkId;
      deleteFirstKindList(id).then(function (response) {
      });
    this.reload();
    },
  },
  created() {
    this.showFirstKindList();
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