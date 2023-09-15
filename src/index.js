const express = require('express');
const app = express();
//Settings
app.set('port',3003);

//Middlewares

//Rutas

//Static files (public)
app.use(express.static(__dirname + "/public"));

//Puerto para correr
app.listen(app.get('port'), () => {
	console.log("Server on port http://localhost:" + app.get('port'));
});