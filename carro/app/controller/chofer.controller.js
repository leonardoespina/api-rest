const db = require("../config/db.config.js");

const choferes = db.choferes;

// FETCH all Users

exports.post = async (req, res) => {
  console.log(req.body);
  /*let data = {};
  Object.keys(req.body).forEach(function (key, index) {
    data[key] = req.body[key];
  });

  vehiculo.create(data);*/
  await choferes
    .create(req.body)
    .then(() => {
      res.status(200).send({ message: "Chofer Registrado" });
    })
    .catch((err) => {
      res.status(500).send({ message: err.message });
    });

  /*Categoria.create({
    categorias: req.body.categorias,
  })
    .then((user) => {
      res.status(200).send({ message: "Vehiculo Registrada" });
    })
    .catch((err) => {
      res.status(500).send({ message: err.message });
    });*/
};

exports.findAll = async (req, res) => {
  await choferes
    .findAll()
    .then((resp) => {
      // Send all users to Client
      //res.status(200).send({hola:"go"});
      console.log(resp);
      res.status(200).send(resp);

      /*   for (let i in res) {
        console.log(`${res[i].dataValues.tipousuario.ruta}`);
      }*/

      //console.log(res[0]._previousDataValues.tipousuario.user);
      //   console.log(res[0]._previousDataValues.tipousuario.ruta);
    })
    .catch((err) => {
      res.send(err).status();
    });
  /* await User.findAll({
    include: [{ model: db.TipoUsuarios }],
  });*/
};
exports.findById = async (req, res) => {
  await choferes
    .findByPk(req.params.id)
    .then((resp) => {
      if (!resp) {
        res
          .status(400)
          .send({ message: "No se Encuentra Registro Con ese ID" });
      } else {
        res.status(200).send(resp);
      }
    })
    .catch((err) => {
      res.send(err).status(404);
    });
};
exports.findByIdChofer = async (req, res) => {
  console.log(req.params.id);
  await choferes
    .findAll({
      where: {
        cedula: req.params.id,
      },
    })
    .then((resp) => {
      console.log(resp);
      res.status(200).send(resp);
      /* if (!resp) {
        res
          .status(400)
          .send({ message: "No se Encuentra Registro Con ese ID" });
      } else {
        res.status(200).send(resp);
      }
    })
    .catch((err) => {
      res.send(err).status(404);
    });*/
    });
};
exports.update = (req, res) => {
  console.log(req.body);
  const id = req.params.id;
  choferes.update(req.body, { where: { id: req.params.id } }).then(() => {
    res.status(200).send({
      message: "Se actualizo Chofer :" + req.body.nombreApellido,
    });
  });
};
exports.delete = (req, res) => {
  const id = req.params.id;
  choferes
    .destroy({
      where: { id: id },
    })
    .then(() => {
      res.status(200).send({ message: "Registro Eliminado" });
    });
};
