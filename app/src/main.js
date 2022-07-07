import Vue from 'vue'
import App from './App.vue'
import router from '@/router'
import store from '@/store'
import TypeNav from '@/components/typeNav'
import '@/mock/mockServer'
Vue.config.productionTip = false
Vue.component(TypeNav.name,TypeNav)

new Vue({
  render: h => h(App),
  router,//注册路由
  store,//注册仓库
}).$mount('#app')
