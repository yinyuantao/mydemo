module.exports = {
  // 关闭ESLINT校验工具
  lintOnSave: false,
  devServer: {
    // open: true,
    port: 9001,
    proxy: {

      // 配置跨域
      '/api': {
        target: "http://127.0.0.1:8001",//后端接口地址
        changeOrigin: true,
        pathRewrite: {
          '^/api': ''
        }
      }
    },
  }
}
