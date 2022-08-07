import Vue from 'vue'
import Router from 'vue-router'

import Nav from '@/components/Nav'
// 人力档案
import fileRegistration from '@/views/fileManagement/fileRegistration'
import fileReview from '@/views/fileManagement/fileReview'
import fileQuery from '@/views/fileManagement/fileQuery'
import fileChange from '@/views/fileManagement/fileChange'
import fileDeletion from '@/views/fileManagement/fileDeletion'
import fileRecovery from '@/views/fileManagement/fileRecovery'
import deletePermanently from '@/views/fileManagement/deletePermanently'

import change from '@/views/Recruitment/JobPosting/change'
import register from '@/views/Recruitment/JobPosting/register'
import release from '@/views/Recruitment/JobPosting/release'
import ResumeRegistration from '@/views/ResumeManagement/ResumeRegistration'
import ResumeScreening from '@/views/ResumeManagement/ResumeScreening'
import ResumeQuery from '@/views/ResumeManagement/ResumeScreening'
import interviewRegistration from '@/views/interviewManagement/interviewRegistration'
import interviewScreening from '@/views/interviewManagement/interviewScreening'
import admissionApproval from '@/views/hiringManagement/admissionApproval'
import employmentInquiry from '@/views/hiringManagement/employmentInquiry'
import hiringApplication from '@/views/hiringManagement/hiringApplication'
// 薪酬标准管理
import payGrade from '@/views/payrollManagement/payGrade'
import salaryReview from '@/views/payrollManagement/salaryReview'
import salaryInquiry from '@/views/payrollManagement/salaryInquiry'
import salaryChange from '@/views/payrollManagement/salaryChange'
import salaryGiving from '@/views/payrollManagement/salaryGiving'
import payrollEnquiry from '@/views/payrollManagement/payrollEnquiry'
import payrollReview from '@/views/payrollManagement/payrollReview'
//调动管理
import transferQuery from '@/views/transferManagement/transferQuery'
import transferRegistration from '@/views/transferManagement/transferRegistration'
import transferReview from '@/views/transferManagement/transferReview'
//人力资源档案管理设置
import jobClassification from '@/views/customizedSettings/fileSettings/jobClassification'
import jobSettings from '@/views/customizedSettings/fileSettings/jobSettings'
import oneInstitution from '@/views/customizedSettings/fileSettings/oneInstitution'
import publicProperty from '@/views/customizedSettings/fileSettings/publicProperty'
import threeInstitution from '@/views/customizedSettings/fileSettings/threeInstitution'
import titleSetting from '@/views/customizedSettings/fileSettings/titleSetting'
import twoInstitution from '@/views/customizedSettings/fileSettings/twoInstitution'
import payrollSettings from '@/views/customizedSettings/payrollSettings'
//权限管理
import userManagement from '@/views/authorityManagement/userManagement'
import roleManagement from '@/views/authorityManagement/roleManagement'
//登陆
import login from '@/views/login'
//面包屑导航
import breadcrumb from "@/components/Breadcrumb"
Vue.use(Router)

export default new Router({
  routes: [
    { 
      path:'*',
      redirect:'/home'
    },
    {
      path: '/',
      name: 'Nav',
      component: Nav,
      children:[
        { 
          path: '/fileRegistration',
          name: '人力资源档案等级',
          component: fileRegistration,
        },
        { 
          path: '/change',
          name: '职位发布登记',
          component: change,
        },
        { 
          path: '/register',
          name: '职位发布变更',
          component: register,
        },
        { 
          path: '/release',
          name: '职位发布查询',
          component: release,
        },
        { 
          path: '/ResumeRegistration',
          name: '简历登记',
          component: ResumeRegistration,
        },
        { 
          path: '/ResumeScreening',
          name: '简历筛选',
          component: ResumeScreening,
        },
        { 
          path: '/ResumeQuery',
          name: '有效简历查询',
          component: ResumeQuery,
        },
        { 
          path: '/interviewRegistration',
          name: '面试结果登记',
          component: interviewRegistration,
        },
        { 
          path: '/interviewScreening',
          name: '面试结果筛选',
          component: interviewScreening,
        },
        { 
          path: '/admissionApproval',
          name: '录用申请',
          component: admissionApproval,
        },
        { 
          path: '/hiringApplication',
          name: '录用审批',
          component: hiringApplication,
        },
        { 
          path: '/employmentInquiry',
          name: 'employmentInquiry',
          component: employmentInquiry,
        },
        { 
          path: '/fileReview',
          name: '人力资源档案复核',
          component: fileReview,
        },
        { 
          path: '/fileQuery',
          name: '人力资源档案查询',
          component: fileQuery,
        },
        { 
          path: '/fileChange',
          name: '人力资源档案变更',
          component: fileChange,
        },
        { 
          path: '/fileDeletion',
          name: '人力资源档案删除',
          component: fileDeletion,
        },
        { 
          path: '/fileRecovery',
          name: 'fileRecovery',
          component: fileRecovery,
        },
        { 
          path: '/deletePermanently',
          name: '人力资源档案永久删除',
          component: deletePermanently,
        },
        { 
          path: '/payGrade',
          name: '薪酬标准登记',
          component: payGrade,
        },
        { 
          path: '/salaryReview',
          name: 'salaryReview',
          component: salaryReview,
        },
        { 
          path: '/salaryChange',
          name: 'salaryChange',
          component: salaryChange,
        },
        { 
          path: '/salaryInquiry',
          name: 'salaryInquiry',
          component: salaryInquiry,
        },
        { 
          path: '/salaryGiving',
          name: '薪酬发放登记',
          component: salaryGiving,
        },
        { 
          path: '/payrollEnquiry',
          name: 'payrollEnquiry',
          component: payrollEnquiry,
        },
        { 
          path: '/payrollReview',
          name: 'payrollReview',
          component: payrollReview,
        },
        { 
          path: '/transferQuery',
          name: '调动管理',
          component: transferQuery,
        },
        { 
          path: '/transferRegistration',
          name: '调动审核',
          component: transferRegistration,
        },
        { 
          path: '/transferReview',
          name: '调动查询',
          component: transferReview,
        },
        { 
          path: '/jobClassification',
          name: '职位分类设置',
          component: jobClassification,
        },
        { 
          path: '/jobSettings',
          name: '职位设置',
          component: jobSettings,
        },
        { //一级机构设置
          path: '/oneInstitution',
          name: '一级机构设置',
          component: oneInstitution,
        },
        { 
          path: '/publicProperty',
          name: '公共属性设置',
          component: publicProperty,
        },
        { 
          path: '/threeInstitution',
          name: 'threeInstitution',
          component: threeInstitution,
        },
        { 
          path: '/titleSetting',
          name: '职称设置',
          component: titleSetting,
        },
        { 
          path: '/twoInstitution',
          name: '二级机构设置',
          component: twoInstitution,
        },
        { 
          path: '/payrollSettings',
          name: '项目薪酬设置',
          component: payrollSettings,
        },
        { 
          path: '/roleManagement',
          name: '角色管理',
          component: roleManagement,
        },
        { 
          path: '/userManagement',
          name: '用户管理',
          component: userManagement,
        }
    ]
    },
    { 
      path: '/login',
      name: '登录',
      component: login,
    }
    ,
    { 
      path: '/breadcrumb',
      name: '面包屑',
      component: breadcrumb,
    }
  ]
  
})
