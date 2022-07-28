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
          name: 'fileRegistration',
          component: fileRegistration,
        },
        { 
          path: '/change',
          name: 'change',
          component: change,
        },
        { 
          path: '/register',
          name: 'register',
          component: register,
        },
        { 
          path: '/release',
          name: 'release',
          component: release,
        },
        { 
          path: '/ResumeRegistration',
          name: 'ResumeRegistration',
          component: ResumeRegistration,
        },
        { 
          path: '/ResumeScreening',
          name: 'ResumeScreening',
          component: ResumeScreening,
        },
        { 
          path: '/ResumeQuery',
          name: 'ResumeQuery',
          component: ResumeQuery,
        },
        { 
          path: '/interviewRegistration',
          name: 'interviewRegistration',
          component: interviewRegistration,
        },
        { 
          path: '/interviewScreening',
          name: 'interviewScreening',
          component: interviewScreening,
        },
        { 
          path: '/admissionApproval',
          name: 'admissionApproval',
          component: admissionApproval,
        },
        { 
          path: '/hiringApplication',
          name: 'hiringApplication',
          component: hiringApplication,
        },
        { 
          path: '/employmentInquiry',
          name: 'employmentInquiry',
          component: employmentInquiry,
        },
        { 
          path: '/fileReview',
          name: 'fileReview',
          component: fileReview,
        },
        { 
          path: '/fileQuery',
          name: 'fileQuery',
          component: fileQuery,
        },
        { 
          path: '/fileChange',
          name: 'fileChange',
          component: fileChange,
        },
        { 
          path: '/fileDeletion',
          name: 'fileDeletion',
          component: fileDeletion,
        },
        { 
          path: '/fileRecovery',
          name: 'fileRecovery',
          component: fileRecovery,
        },
        { 
          path: '/deletePermanently',
          name: 'deletePermanently',
          component: deletePermanently,
        },
        { 
          path: '/payGrade',
          name: 'payGrade',
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
          name: 'salaryGiving',
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
          name: 'transferQuery',
          component: transferQuery,
        },
        { 
          path: '/transferRegistration',
          name: 'transferRegistration',
          component: transferRegistration,
        },
        { 
          path: '/transferReview',
          name: 'transferReview',
          component: transferReview,
        },
        { 
          path: '/jobClassification',
          name: 'jobClassification',
          component: jobClassification,
        },
        { 
          path: '/jobSettings',
          name: 'jobSettings',
          component: jobSettings,
        },
        { 
          path: '/oneInstitution',
          name: 'oneInstitution',
          component: oneInstitution,
        },
        { 
          path: '/publicProperty',
          name: 'publicProperty',
          component: publicProperty,
        },
        { 
          path: '/threeInstitution',
          name: 'threeInstitution',
          component: threeInstitution,
        },
        { 
          path: '/titleSetting',
          name: 'titleSetting',
          component: titleSetting,
        },
        { 
          path: '/twoInstitution',
          name: 'twoInstitution',
          component: twoInstitution,
        }
    ]
    }
  ]
  
})
