import Vue from 'vue'
import Router from 'vue-router'

import Nav from '@/components/Nav'
import FileManagement from '@/views/FileManagement'
import change from '@/views/Recruitment/JobPosting/change'

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
        }
    ]
    }
  ]
  
})
