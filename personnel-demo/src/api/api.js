import request from './request'

//按需导出每个请求

//请求一级分类数据
export const getFirstKindList = () => request({ 
    url:'/hrservice/firstKind/first',
    method:'get'
});

//点击修改一级分类数据
// export const updateFirstKindList =(id) => request.post('/hrservice/firstKind/first/updateFirstKind'); 

//点击删除一级分类数据
export const deleteFirstKindList = (id) => request({ 
    url:`/hrservice/firstKind/deleteFirstKind/${id}`,
    method:'delete',
});




//添加一级分类数据
export const addFirstKindList = (KindList) => request({ 
    url:`/hrservice/firstKind/addFirstKind`,
    method:'post',
    data:KindList

});

//更改一级分类数据
export const updateFirstKind = () => request({ 
    url:`/hrservice/firstKind/updateFirstKind`,
    method:'post',
})