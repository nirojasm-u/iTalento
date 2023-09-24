const express 	= require('express');
const error 	= require('jquery');

const conexion	= require('./db');
const route		= require('./router');

//insertar datos base de datos
exports.createUsuario = (req,res) =>{
	const id = req.body.id;
	const email = req.oidc.user.email;
	const password = req.body.password;
	const username = req.body.username;
	const firstName = req.oidc.user.given_name;
	const lastName = req.oidc.user.family_name;
	const description = req.body.description;
	const profileImage = req.oidc.user.picture;
	const isBuyer = req.body.isBuyer;
	const isBoth = req.body.isBoth;
	const isFreelancer = req.body.isFreelancer;
	const createdAt = req.body.createdAt;
	conexion.query("INSERT INTO Usuario (id,email, password, username, firstName, lastName, description, profileImage, isBuyer, isBoth, isFreelancer, createdAt) VALUES ( '" + id + "' ,'" + email + "' , '" + password + "' ,'" + username + "' , '" + firstName + "' , '" + lastName + "' , " + description + ", " + profileImage + ", " + isBuyer + ", " + isBoth + ", " + isFreelancer + ", " + createdAt +")", (error, results) => {
		if(error){
			console.log(error);
		}else{
			console.log("Se creó el usuario: " + firstName + " " + lastName);
			res.redirect('/personas');
		}
	});
}

exports.createHabilidades = (req,res) =>{
	const idHabilidades = req.body.id;
	const nameH = req.body.id;
	const lvl = req.body.id;

	conexion.query("INSERT INTO Habilidades (idHabilidades, nameH, lvl) VALUES ( '" + idHabilidades + "' ,'" + nameH + "' , '" + lvl + ")", (error, results) => {
		if(error){
			console.log(error);
		}else{
			console.log("Se agregó la habilidad ");
			res.redirect('/personas');
		}
	});
}

exports.createIdioma = (req,res) =>{
	const idIdioma = req.body.idIdioma;
	const nombreI = req.body.nombreI;
	const lvlI = req.body.lvlI;

	conexion.query("INSERT INTO Idioma (idIdioma, nombreI, lvlI) VALUES ( '" + idIdioma + "' ,'" + nombreI + "' , '" + lvlI + ")", (error, results) => {
		if(error){
			console.log(error);
		}else{
			console.log("Se agregó el idioma ");
			res.redirect('/personas');
		}
	});
}

exports.createRed = (req,res) =>{
	const id = req.body.id;
	const nombreRed = req.body.nombreRed;
	const linkRed = req.body.linkRed;

	conexion.query("INSERT INTO Red (id, nombreRed, linkRed) VALUES ( '" + id + "' ,'" + nombreRed + "' , '" + linkRed + ")", (error, results) => {
		if(error){
			console.log(error);
		}else{
			console.log("Se agregó la red ");
			res.redirect('/personas');
		}
	});
}


//Funciones de la base de datos
const usuarios = (req,res) => {
	const id = req.body.id;
	const nombre = req.body.Nombre;
	const contraseña = req.body.Contraseña;
	
	conexion.query("SELECT * FROM usuarios", (error,results) => {
		if(error){
			console.log(error);
		}else{
			res.json({results:results});
		}
	});
};



const publicaciones = (req,res) => {
	const id = req.body.PublicacionID;
	const autor = req.body.AutorID;
	const contenido = req.body.Contenido;

	conexion.query("SELECT * FROM publicaciones", (error,results) => {
		if(error){
			console.log(error);
		}else{
			res.json({results:results});
		}
	});
};

const test = (req,res) => {
		res.send("Test");
};

//Export para su uso en otros archivos
exports.usuarios		= usuarios;
exports.publicaciones	= publicaciones;
exports.test			= test;