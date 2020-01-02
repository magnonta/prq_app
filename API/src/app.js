const express = require("express");
const mongoose = require("mongoose");
const routes = require('./routes');

const server = express();


mongoose.connect('mongodb+srv://root:root@cluster0-efgsc.mongodb.net/appigreja?retryWrites=true&w=majority', { useUnifiedTopology: true }, () => {
    console.log('CONECTADO');
});
server.use(express.json());

server.use(routes);


server.listen(4444, () => {
    console.log('Api rodando')
});

