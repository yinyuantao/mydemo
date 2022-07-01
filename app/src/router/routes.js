import Home from '@/views/Home'
import Search from '@/views/Search'
import Register from '@/views/Register'
import Login from '@/views/Login'


/*
    所有静态路由配置的数组
*/
export default [ 
    { 
        path: '/',
        component:Home
    },
    { 
        path: '/search/:keyword?',//params参数可传可不传
        component:Search
    },
    { 
        path: '/register',
        component:Register,
        meta: { 
            isHideFooter: true
        }
    },
    { 
        path: '/login',
        component:Login,
        meta: {
            isHideFooter: true
        }
    },

]
