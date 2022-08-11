module.exports = {
  // 关闭ESLINT校验工具
  lintOnSave: false,
  devServer: {
    // open: true,
    port: 9001,
    proxy: {

<<<<<<< HEAD
// }

// devServer: {
//   open: true,
//   host: 'localhost',
//   port: 8080,
//   https: false,
//   hotOnly: false,
//   proxy: {
//     // 配置跨域
//     '/api': {
//       target: 'http://127.0.0.1:8001',//后端接口地址
//       changOrigin: true,
//       pathRewrite: {
//         '^/api': '/api'
//       }
//     }
//   },
// }
dev: {
  env: require('./dev.env'),
  port: 8080,
  autoOpenBrowser: true,
  assetsSubDirectory: 'static',
  assetsPublicPath: '/',
  proxyTable: {
     //axios跨域改造 by zhengkai.blog.csdn.net
    '/api': {
      target:'http://127.0.0.1:8001/', // 你请求的第三方接口
      changeOrigin:true, // 在本地会创建一个虚拟服务端，然后发送请求的数据，并同时接收请求的数据，这样服务端和服务端进行数据的交互就不会有跨域问题
      pathRewrite:{  // 路径重写，
        '^/api': ''  // 替换target中的请求地址，也就是说/api=/target，请求target这个地址的时候直接写成/api即可。
      }
    }
  },
  // CSS Sourcemaps off by default because relative paths are "buggy"
  // with this option, according to the CSS-Loader README
  // (https://github.com/webpack/css-loader#sourcemaps)
  // In our experience, they generally work as expected,
  // just be aware of this issue when enabling this option.
  cssSourceMap: false
}



=======
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
>>>>>>> db693aa7bbe52a9d3a119e403daf4741d77e2719
}


