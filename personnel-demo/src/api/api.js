import request from './request'

//按需导出每个请求

//请求分类数据
export const getFirstKindList =() => request.get('/hrservice/firstKind/first');