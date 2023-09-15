const { VueLoaderPlugin } = require('vue-loader');

module.exports = {
	entry: './src/app/index.js',
	output: {
		path: __dirname + '/src/public/js',
		filename: 'bundle.js'
	},
	module: {
		rules: [
			{
				test: /\.js$/, // Busca todos los archivos con extensión .js
				exclude: /node_modules/, // Excluye la carpeta node_modules
				use: {
					loader: 'babel-loader' // Utiliza el loader de babel
				}
			},
			{
				test: /\.vue$/,
				loader: 'vue-loader'// Utiliza el loader de vue
			}
		]
	},
	plugins: [
		new VueLoaderPlugin()
	]

};