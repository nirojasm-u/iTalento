const express = require('express');
const morgan = require('morgan');
const mysql = require('mysql2');
const app = express();

//Settings
app.set('port', 3003);

//Middlewares
app.use(morgan('dev'));
app.use(express.json());

//Rutas (Usa el router de express)
app.use('/',require('./controllers/router'));

//Static files (public)
app.use(express.static(__dirname + "/public"));

//Puerto para correr
app.listen(app.get('port'), () => {
	console.log("Server on port http://localhost:" + app.get('port'));
});