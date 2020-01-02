const Igreja = require('../model/igreja');


module.exports = {
    async  store(req, res) {
        const { name, horarios, imagem } = req.body;

        const igreja = await Igreja.create({
            name: name,
            horarios: horarios,
            imagem: imagem
        })

        return res.json(igreja);
    }
};