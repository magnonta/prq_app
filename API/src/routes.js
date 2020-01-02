const server = require('express');
const IgrejaController = require('./controller/IgrejaController');

const routes = server.Router();

console.log("routes.post")
routes.post('/cadastroigreja', IgrejaController.store);


module.exports = routes;