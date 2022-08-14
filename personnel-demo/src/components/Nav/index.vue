<template>
  <div class="trees">
    <el-tree
      :data="data"
      :props="defaultProps"
      @node-click="handleNodeClick"
      class="navigation"
    ></el-tree>
    <router-view> </router-view>
  </div>
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
                  path: "/change"
                },
                {
                  label: "职位发布变更",
                  path: "/register"
                },
                {
                  label: "职位发布查询",
                  path: "/release"
                }
              ]
            },
            {
              label: "简历管理",
              children: [
                {
                  label: "简历登记",
                  path: "/ResumeRegistration"
                },
                {
                  label: "简历筛选",
                  path: "/ResumeScreening"
                },
                {
                  label: "有效简历查询",
                  path: "/ResumeQuery"
                }
              ]
            },
            {
              label: "面试管理",
              children: [
                {
                  label: "面试结果登记",
                  path: "/interviewRegistration"
                },
                {
                  label: "面试筛选",
                  path: "/interviewScreening"
                }
              ]
            },
            {
              label: "录用管理",
              children: [
                {
                  label: "录用申请",
                  path: "/admissionApproval"
                },
                {
                  label: "录用审批",
                  path: "/hiringApplication"
                },
                {
                  label: "录用查询",
                  path: "/employmentInquiry"
                }
              ]
            }
          ]
        },

        {
          label: "人力资源档案管理",
          children: [
            {
              label: "人力资源档案登记"
            },
            {
              label: "人力资源档案登记复核",
              path: "/fileReview"
            },
            {
              label: "人力资源档案查询",
              path: "/fileQuery"
            },
            {
              label: "人力资源档案变更",
              path: "/fileChange"
            },
            {
              label: "人力资源档案删除管理",
              children: [
                {
                  label: "人力资源档案删除",
                  path: "/fileChange"
                },
                {
                  label: "档案删除恢复",
                  name: "人力资源档案删除"
                },
                {
                  label: "人力资源档案永久删除",
                  path: "/deletePermanently"
                }
              ]
            }
          ]
        },
        {
          label: "薪酬标准管理",
          children: [
            {
              label: "薪酬标准登记",
              path: "/payGrade"
            },
            {
              label: "薪酬标准登记复核",
              path: "/salaryReview"
            },
            {
              label: "薪酬标准查询",
              path: "/salaryChange"
            },
            {
              label: "薪酬标准变更",
              path: "/salaryInquiry"
            }
          ]
        },
        {
          label: "薪酬发放管理",
          children: [
            {
              label: "薪酬发放登记",
              path: "/salaryGiving"
            },
            {
              label: "薪酬发放登记复核",
              path: "/payrollEnquiry"
            },
            {
              label: "薪酬发放查询",
              path: "/payrollReview"
            }
          ]
        },
        {
          label: "调动管理",
          children: [
            {
              label: "调动登记",
              path: "/transferQuery"
            },
            {
              label: "调动审核",
              path: "/transferRegistration"
            },
            {
              label: "调动查询",
              path: "/transferReview"
            }
          ]
        },
        {
          label: "客户化设置",
          children: [
            {
              label: "人力资源档案管理设置",
              children: [
                {
                  label: "机构设置",
                  path: "/oneInstitution"
                },
                {
                  label: "职位分类设置",
                  path: "/titleSetting"
                },
                {
                  label: "职位设置",
                  path: "/jobClassification"
                },
                {
                  label: "公共属性设置",
                  path: "/publicProperty"
                }
              ]
            },
            {
              label: "薪酬管理设置",
              children: [
                {
                  label: "薪酬项目设置",
                  path: "/payrollSettings"
                },
              ]
            },
            {
              label: "其他设置",
              children: [
                {
                  label: "关键字查询设置"
                }
              ]
            }
          ]
        },
        {
          label: "标准数据报表",
          children: [
            {
              label: "Excel标准数据报表"
            },
            {
              label: "Pdf标准数据报表"
            },
            {
              label: "Xml标准数据报表"
            }
          ]
        },
        {
          label: "权限管理",
          children: [
            {
              label: "用户管理",
              path: "/userManagement"
            },
            {
              label: "角色管理",
              path: "/roleManagement"
            }
          ]
        }
      ],
      defaultProps: {
        children: "children",
        label: "label"
      }
    };
  },
  methods: {
    handleNodeClick(data) {
      this.$router.push(data.path);
    }
  }
};
</script>

<style scoped lang="scss">
.trees {
  width: 200px;
  height: 1095px;
  background-color: #ffffcc;
  float: left;
  position: relative;
}
.navigation {
  width: 200px;
  height: auto;
  background-color: #ffffcc;
  color: #000;
  font-size: 40px;
  position: relative;
}
</style>
