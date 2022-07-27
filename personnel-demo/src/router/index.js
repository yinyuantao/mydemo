import Vue from 'vue'
import Router from 'vue-router'

import Nav from '@/components/Nav'
// 人力档案
import fileRegistration from '@/views/fileManagement/fileRegistration'
import fileReview from '@/views/fileManagement/fileReview'
import fileQuery from '@/views/fileManagement/fileQuery'
import fileChange from '@/views/fileManagement/fileChange'

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
        }
        ,
        { 
          path: '/fileChange',
          name: 'fileChange',
          component: fileChange,
        }
    ]
    }
  ]
  
})
