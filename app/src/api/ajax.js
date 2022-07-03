
//axios二次封装
import axios from "axios";
//引入进度条
import nprogress from "nprogress";
// 引入进度条样式
import "nprogress/nprogress.css";
// start:进度条开始
// done:进度条结束

//利用axios对象的方法create，创建一个asiox实例
//requests就是axios，只不过稍微配置一下
let requests = axios.create({
    //基础路径
    baseURL: "/api",
    //请求不能超过5S
    timeout: 5000,
  });
//请求拦截器，再发请求前，请求拦截器可以检测到
requests.interceptors.request.use((config)=>{
    //config:配置对象,对象里有一个属性，headers请求头
    nprogress.start()
    return config
})
//响应拦截器
requests.interceptors.response.use((res)=>{
    //响应成功的回调函数
    nprogress.done()
    return res.data
},(error)=>{
    //响应成功的回调函数
    // alert("服务器响应数据失败")
    console.log(1);
})

//对外暴露
export default requests
