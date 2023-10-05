const express = require('express');
const router = express.Router();

const crud = require('./crud');
//Permite ser usado en otros archivos
module.exports = router;

//Router index
/*
router.get('/', (req, res) => {
	console.log(req.oidc.isAuthenticated());
	console.log(req.oidc.user);
	res.send("Bienvenido al API de italento");
});
*/


//Segun el metodo de la peticion, se ejecuta la funcion correspondiente
router.get('/usuarios', 		crud.usuarios);
router.get('/publicaciones',	crud.publicaciones);
router.get('/test',				crud.test);