// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import router from './router'
import axios from 'axios'
import 'element-ui/lib/theme-chalk/index.css'
import './assets/css/left.css'
Vue.config.productionTip = false
 /* element-ui所有组件
 */
 import ElementUI from 'element-ui'
 Vue.use(ElementUI)
Vue.prototype.$axios = axios
/* eslint-disable no-new */
new Vue({
  router,//注册路由
  axios,//注册axios
  render: h => h(App)
}).$mount('#app')

