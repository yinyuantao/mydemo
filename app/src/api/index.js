//当前模块，API进行统一管理，即对请求接口统一管理
import requests from "@/api/request";
import mockRequests from './mockAjax'

export const reqCateCoryList = () => requests({ 
        url:'/product/getBaseCategoryList',
        method:'get'
    })


export const reqGetBannerList =() => mockRequests.get('/banner')

export const reqFloorList =() => mockRequests.get('/floor')

export const reqGetSearchInfo = (params) => requests({ 
    url: '/list',
    method:'post',
    data:params
})