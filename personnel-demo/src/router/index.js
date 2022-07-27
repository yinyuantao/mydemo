import Vue from 'vue'
import Router from 'vue-router'

import Nav from '@/components/Nav'
import FileManagement from '@/views/FileManagement'
import change from '@/views/Recruitment/JobPosting/change'
import register from '@/views/Recruitment/JobPosting/register'
import release from '@/views/Recruitment/JobPosting/release'
import ResumeRegistration from '@/views/ResumeManagement/ResumeRegistration'
import ResumeScreening from '@/views/ResumeManagement/ResumeScreening'
import ResumeQuery from '@/views/ResumeManagement/ResumeScreening'
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
          path: '/FileManagement',
          name: 'Home',
          component: FileManagement,
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
        }
    ]
    }
  ]
  
})
