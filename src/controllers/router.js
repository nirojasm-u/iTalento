const express = require('express');
const router = express.Router();

const crud = require('./crud');

//Permite ser usado en otros archivos
module.exports = router;

//Segun el metodo de la peticion, se ejecuta la funcion correspondiente
router.get('/usuarios', 		crud.usuarios);
router.get('/publicaciones',	crud.publicaciones);
router.get('/test',				crud.test);
