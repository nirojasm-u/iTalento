const express = require('express');
const morgan = require('morgan');
const mysql = require('mysql2');
const app = express();
const { auth } = require('express-openid-connect');

const config = {
    authRequired: false,
    auth0Logout: true,
    secret: process.env.SECRET,
    baseURL: process.env.BASEURL,
    clientID: process.env.CLIENTID,
    issuerBaseURL: process.env.ISSUER
};

//Settings
app.set('port', 3000);

//Middlewares
// auth router attaches /login, /logout, and /callback routes to the baseURL
app.use(auth(config));
app.use(morgan('dev'));
app.use(express.json());
app.use(express.urlencoded({extended: true}))

//Rutas (Usa el router de express)
app.use('/',require('./controllers/router'));

//Static files (public)
app.use(express.static(__dirname + "/public"));

//Puerto para correr
app.listen(app.get('port'), () => {
	console.log("Server on port http://localhost:" + app.get('port'));
});