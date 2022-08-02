import request from '@/utils/request'

export function login(username,password){ 
    return request({ 
        url: '/hr/login',
        method: 'post',
        data: { 
            username,
            password
        }
    })
}