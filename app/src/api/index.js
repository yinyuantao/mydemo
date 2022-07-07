//当前模块，API进行统一管理，即对请求接口统一管理
import requests from "@/api/request";
import mockRequests from './mockAjax'

export const reqCateCoryList = () => { 
    return requests({ 
        url:'/product/getBaseCategoryList',
        method:'get'
    })
}

export const reqGetBannerList =() => mockRequests.get('/banner')

export const reqFloorList =() => mockRequests.get('/floor')