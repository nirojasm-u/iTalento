const query 	= require('express');
const error 	= require('jquery');

const conexion	= require('./db');
const route		= require('./router');

//Funciones de la base de datos
const usuarios = (req,res) => {
	const id = req.body.id;
	const nombre = req.body.Nombre;
	const contraseña = req.body.Contraseña;
	let sql = "";
	if(error){
		console.log(error);
	}else{
		console.log(sql);
		res.send("Usuarios");
	}
};

const publicaciones = (req,res) => {
	const id = req.body.PublicacionID;
	const autor = req.body.AutorID;
	const contenido = req.body.Contenido;
	let sql = "SELECT * FROM publicaciones;";
	if(error){
		console.log(error);
	}else{
		console.log(sql);
	}
};
const test = (req,res) => {
	res.send("Test");
};

//Export para su uso en otros archivos
exports.usuarios		= usuarios;
exports.publicaciones	= publicaciones;
exports.test			= test;