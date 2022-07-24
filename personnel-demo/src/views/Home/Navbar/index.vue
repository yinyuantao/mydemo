<template>
  <el-tree
    :data="data"
    :props="defaultProps"
    @node-click="handleNodeClick"
  ></el-tree>
</template>

<script>
export default {
  data() {
    return {
      data: [
        {
          label: "招聘管理",
          children: [
            {
              label: "职位发布管理",
              children: [
                {
                  label: "职位发布登记",
                },
                {
                  label: "职位发布变更",
                },
                {
                  label: "职位发布查询",
                },
              ],
            },
            {
              label: "简历管理",
              children: [
                {
                  label: "简历登记",
                },
                {
                  label: "简历筛选",
                },
                {
                  label: "有效简历查询",
                },
              ],
            },
             {
              label: "面试管理",
              children: [
                {
                  label: "面试结果登记",
                },
                {
                  label: "面试筛选",
                },
              ],
            },
             {
              label: "录用管理",
              children: [
                {
                  label: "录用申请",
                },
                {
                  label: "录用审批",
                },
                {
                  label: "录用查询",
                },
              ],
            },
          ],
        },  
        
        {
          label: "人力资源档案管理",
          children: [
            {
              label: "人力资源档案登记",
            },
                        {
              label: "人力资源档案登记复核",
            },
                        {
              label: "人力资源档案查询",
            },
                        {
              label: "人力资源档案变更",
            },
            {
              label: "人力资源档案删除管理",
              children: [
                {
                  label: "人力资源档案删除",
                },
                {
                  label: "档案删除恢复",
                },
                {
                  label: "人力资源档案永久删除",
                },
              ],
            },
          ],
        }, 
        {
          label: "薪酬标准管理",
          children: [
            {
              label: "薪酬标准登记",
            },
                        {
              label: "薪酬标准登记复核",
            },
                        {
              label: "薪酬标准查询",
            },
                        {
              label: "薪酬标准变更",
            },
          ],
        },  
        {
          label: "薪酬发放管理",
          children: [
            {
              label: "薪酬发放登记",
             
            },
                        {
              label: "薪酬发放登记复核",
             
            },
                                    {
              label: "薪酬发放查询",
             
            },
          ],
        },  
        {
          label: "调动管理",
          children: [
            {
              label: "调动登记",
            },
                        {
              label: "调动审核",
            },
                        {
              label: "调动查询",
            },
          ],
        },  
        {
          label: "客户化设置",
          children: [
            {
              label: "人力资源档案管理设置",
              children: [
                {
                  label: "一级机构设置",
                },
                {
                  label: "二级机构设置",
                },
                {
                  label: "三级机构设置",
                },
                                {
                  label: "职称设置",
                },
                                {
                  label: "职称分类设置",
                },
                                {
                  label: "公共属性设置",
                },

              ],
            },
            {
              label: "薪酬管理设置",
              children: [
                {
                  label: "薪酬项目设置",
                },
                {
                  label: "薪酬发放方法设置",
                },

              ],
            },
            {
              label: "其他设置",
              children: [
                {
                  label: "关键字查询设置",
                },
              ],
            },
          ],
        },  
        {
          label: "标准数据报表",
          children: [
            {
              label: "Excel标准数据报表",
            },
                        {
              label: "Pdf标准数据报表",
            },
                                    {
              label: "Xml标准数据报表",
            },
          ],
        },  
        {
          label: "权限管理",
          children: [
            {
              label: "用户管理",
            },
                        {
              label: "角色管理",
            },
          ],
        },   
      ],
      defaultProps: {
        children: "children",
        label: "label",
      },
    };
  },
  methods: {
    handleNodeClick(data) {
      console.log(data);
    },
  },
};
</script>

<style>
</style>