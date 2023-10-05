const { VueLoaderPlugin } = require('vue-loader');

module.exports = {
	entry: './src/app/main.js',
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
			},
			// Regla para manejar archivos generales
			{
				test: /\.(ico|png|jpg|jpeg|webp|svg)$/,
				use: [
					{
						loader: 'file-loader',
						options: {
							name: '[name].[ext]',
							outputPath: 'assets/', // El directorio de salida donde se colocarán los archivos
						},
					},
				],
			},
			{
				test: /\.css$/,
				use: ['style-loader', 'css-loader'],
			  },
		]
	},
	plugins: [new VueLoaderPlugin()]

};