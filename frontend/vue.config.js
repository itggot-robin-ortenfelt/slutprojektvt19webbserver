module.exports = {
    devServer: {
      proxy: {
        '^/api': {
          target: 'http://localhost:4567/',
          ws: true,
          changeOrigin: true
        },
      }
    }
  }