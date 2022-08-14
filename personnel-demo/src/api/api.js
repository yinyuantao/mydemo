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
export const updateFirstKind = (KindList) => request({ 
    url:`/hrservice/firstKind/updateFirstKind`,
    method:'post',
    data:KindList
})

//根据id查询
export const getInfoById = (id) => request({ 
    url:`/hrservice/firstKind/getById/${id}`,
    method:'get',
})

//查询所有职称
export const selectAllJobType = () => request({ 
    url:'/hrservice/jobType/selectAllJobType',
    method:'get'
});

//删除所有职称
export const removeJobType = (id) => request({ 
    url:`/hrservice/jobType/removeJobType/${id}`,
    method:'delete'
});
//根据id查询职称
export const getJobById = (id) => request({ 
    url:`/hrservice/jobType/getJobById/${id}`,
    method:'get',
})
//根据id修改职称
export const updateJobList = (JobTitleData) => request({ 
    url:`/hrservice/jobType/updateById`,
    method:'post',
    data:JobTitleData
})

//添加职称
export const addJobType = (JobTitleData) => request({ 
    url:`/hrservice/jobType/addJobType`,
    method:'post',
    data:JobTitleData
})

//薪酬项目设置
export const selectSalary = () => request({ 
    url:`/hrservice/salaryItems/selectSalaryItems`,
    method:'get',
})
//增加薪酬项目
export const addSalary = (salarylistData) => request({ 
    url:`/hrservice/salaryItems/addSalary`,
    method:'post',
    data:salarylistData
})

//逻辑删除薪酬项目
export const removeById = (id) => request({ 
    url:`/hrservice/salaryItems/removeSalaryItems/${id}`,
    method:'delete',
})