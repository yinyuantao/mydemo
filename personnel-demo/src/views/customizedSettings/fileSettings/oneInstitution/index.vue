<template>
  <div class="left">
   <el-table
    :data="tableData"
    align="left"
    >
    <el-table-column
      prop="firstKindId"
      label="一级机构编号"
      width="150">
    </el-table-column>
    <el-table-column
      prop="firstKindName"
      label="一级机构名称"
      width="150">
    </el-table-column>
    <el-table-column
      prop="firstKindSalaryId"
      label="薪酬发放责任人编号"
      width="150">
    </el-table-column>
    <el-table-column
      prop="firstKindSaleId"
      label="销售责任人编号"
      width="150">
    </el-table-column>
     <el-table-column
      fixed="right"
      label="操作"
      width="150">
      <template slot-scope="scope">
        <el-button @click="handleClick(scope.row)" type="text" size="small">更改</el-button>
        <el-button type="text" size="small">添加</el-button>
         <el-button type="text" size="small">删除</el-button>
      </template>
    </el-table-column>
  </el-table>


  </div>
</template>

<script>

export default {
  name: "transferRegistration",
    data() {
      return {
        tableData: [{
          firstKindId: '2016-05-02',
          name: '王小虎',
          province: '上海',
          city: '普陀区',
        },
        ],
      }
    } ,
    methods: {
      handleClick(row) {
        console.log(row);
        this.$axios.post('/hrservice/firstKind/updateFirstKind',{ 

        }).then(res => { 
          console.log(res.data);
        })
      },
       getINfo(){ 
      this.$axios.get('hrservice/thirdKind/selectAllThirdKind',{ 
        
      }).then(function(response) { 
        console.log(response.data);
      }),err=> { 
        console.log(err);
      }
      }

      
    },
    created() {



      this.getINfo();
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
/deep/ .el-table .el-table__cell{ 
  text-align: center;
}



</style>