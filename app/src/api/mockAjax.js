import axios from "axios";
//引入进度条
import nprogress from 'nprogress';
//引入进度条样式
import "nprogress/nprogress.css";

let mockAjax = axios.create({
  baseURL: "/mock", // 路径前缀
  timeout: 5000 // 请求超时时间
})

mockAjax.interceptors.request.use((config) => {
  return config
})

mockAjax.interceptors.response.use((response) => {
  return response.data
}, (error) => {
  return Promise.reject(error)
})

export default mockAjax