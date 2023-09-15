const express = require('express');
const morgan = require('morgan');
const app = express();
//Settings
app.set('port',3003);

//Middlewares
app.use(morgan('dev'));

//Rutas

//Static files (public)
app.use(express.static(__dirname + "/public"));

//Puerto para correr
app.listen(app.get('port'), () => {
	console.log("Server on port http://localhost:" + app.get('port'));
});