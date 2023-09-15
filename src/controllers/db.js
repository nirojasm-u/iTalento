//conexion a la base de datos

const mysql = require("mysql2");

const conexion = mysql.createConnection(
	{
		host: "localhost",
		user: "webuser",
		password: "1234",
		port: 3306,
		database: "italento",
	},
);

conexion.connect((error) => {
	if (error) {
		console.error("No se pudo conectar a la BD: " + error);
		return;
	}
	console.log("Conectado a la DB");
});

module.exports = conexion;