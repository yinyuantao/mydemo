/* 
Vuex最核心的管理对象store
*/
import Vue from 'vue'
import Vuex from 'vuex'


// 声明使用vuex插件
Vue.use(Vuex)
import home from './home'
import search from './search'

// 向外暴露store对象
export default new Vuex.Store({
    modules:{ 
        home,
        search
    }
})