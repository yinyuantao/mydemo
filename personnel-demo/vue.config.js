module.exports = {
  // 关闭ESLINT校验工具
  lintOnSave: false,
  //配置代理跨域
//   devServer: {
//     env: require('./dev.env'),
//     open: true,//是否自动启动
//     port: 8080,//默认端口号
//     autoOpenBrowser: true,
//     assetsSubDirectory: 'static',
//     assetsPublicPath: '/',
//     proxy: {
//       '/api': {
//         target: "http://localhost:8001",
//         changOrigin: true, //允许跨域 
//         pathRewrite:{
//           "^/api": ''
//         } 
//       }
//   },
  

// }

devServer: {
  open: true,
  host: 'localhost',
  port: 8080,
  https: false,
  hotOnly: false,
  proxy: {
    // 配置跨域
    '/api': {
      target: '127.0.0.1:8001',//后端接口地址
      ws: true,
      changOrigin: true,
      pathRewrite: {
        '^/api': ''
      }
    }
  },
  before: app => {}
}

}
