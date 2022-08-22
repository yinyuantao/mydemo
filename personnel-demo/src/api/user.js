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

//根据ID查询用户
export const getUserINfo = (id) => request({ 
    url:`/hrservice/user/getUserById/${id}`,
    method:'get'
})

//根据ID更新用户
export const updateUserINfo = (userList) => request({ 
    url:`/hrservice/user/updateUserById`,
    method:'post',
    data:userList
})


//根据用户ID逻辑删除用户
export const deleteUserINfo = (id) => request({ 
    url:`/hrservice/user/removeUserById/${id}`,
    method:'delete',
})