import Vue from 'vue'
import VueRouter from 'vue-router'
//声明使用插件
Vue.use(VueRouter)
import Home from '@/views/Home'
import Search from '@/views/Search'
import Register from '@/views/Register'
import Login from '@/views/Login'
import Detail from '@/views/Detail'

export default new VueRouter({ 
    routes:[
        { 
            path: '*',
            redirect:'/home'
        } ,
        { 
            path: '/home',
            component:Home
        },
        {   
            name:'search',
            path: '/search/:keyword?',//params参数可传可不传
            component:Search,
            meta:{ 
                show:true
            }
        },
        { 
            path: '/register',
            component:Register,
        },
        { 
            path: '/login',
            component:Login,
        },
        { 
            path: '/detail/:skuid',
            component:Detail,
            meta: { 
                show:true
            }
        },
    ]
    
});

