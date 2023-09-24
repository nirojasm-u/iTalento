//conexion a la base de datos
require('dotenv').config()

const mysql = require("mysql2");

const conexion = mysql.createConnection(process.env.DATABASE_URL);

conexion.connect((error) => {
	if (error) {
		console.error("No se pudo conectar a la BD: " + error);
		return;
	}
	console.log("Conectado a la DB");
});

module.exports = conexion;