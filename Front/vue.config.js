const { defineConfig } = require('@vue/cli-service')
module.exports = defineConfig({
  transpileDependencies: true,
  outputDir: '../Back/src/public', // Nombre de la carpeta de salida para archivos estáticos
});