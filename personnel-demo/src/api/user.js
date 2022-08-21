import request from './request'

//请求所有用户分类数据
export const getuser = () => request({ 
    url:'/hrservice/user/showAllUser',
    method:'get'
});

//添加新用户
export const addUsers = (userData) => request({ 
    url:'/hrservice/user/addUser',
    method:'post',
    data:userData
})