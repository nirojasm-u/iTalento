//conexion a la base de datos
require('dotenv').config()

const mysql = require("mysql2");

const conexion = mysql.createConnection({
	host: process.env.HOST,
	user: process.env.USER,
	password: process.env.PASSWORD,
	database: process.env.DATABASE
});

conexion.connect((error) => {
	if (error) {
		console.error("No se pudo conectar a la BD: " + error);
		return;
	}
	console.log("Conectado a la DB");
});

module.exports = conexion;