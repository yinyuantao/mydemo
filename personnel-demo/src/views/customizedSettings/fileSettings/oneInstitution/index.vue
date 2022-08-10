<template>
  <div class="left">
    <el-table :data="tableData" align="left" height="250">
      <el-table-column prop="firstKindId" label="一级机构编号" width="150">
      </el-table-column>
      <el-table-column prop="firstKindName" label="一级机构名称" width="150">
      </el-table-column>
      <el-table-column prop="firstKindSalaryId" label="薪酬发放责任人编号" width="150">
      </el-table-column>
      <el-table-column prop="firstKindSaleId" label="销售责任人编号" width="150">
      </el-table-column>
      <el-table-column fixed="right" label="操作" width="150">
        <template slot-scope="scope">
          <el-button @click="handleClick(scope.row)" type="text" size="small">更改</el-button>
          <el-button type="text" size="small">添加</el-button>
          <el-button @click="removeFirstKindList(scope.row)" type="text" size="small">删除</el-button>
        </template>
      </el-table-column>
    </el-table>

  </div>
</template>

<script>
import { getFirstKindList } from '@/api/api.js'
import { deleteFirstKindList } from '@/api/api.js'

export default {
  name: "transferRegistration",
  data() {
    return {
      tableData: [{
        ffkId: '',
        firstKindId: '',
        firstKindName: '',
        firstKindSalaryId: '',
        firstKindSaleId: '',
      },
      ],
    }
  },
  methods: {
    handleClick(row) {
      console.log(row);
    },

    showFirstKindList() {
      var that = this;
      getFirstKindList().then(function (response) {
        that.tableData = response.data.data.first_kind_list;
      })
    },
    removeFirstKindList(row){ 
      // var id = row.ffkId 
      // console.log(row.ffkId);
      deleteFirstKindList(row.ffkId).then(function (response){ 
          console.log(response);
      })
    }


  },
  created() {
    this.showFirstKindList()
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
  height: 40px;
  width: 150px;
  text-align: center;
}

/deep/ .el-table .el-table__cell {
  text-align: center;
}
</style>