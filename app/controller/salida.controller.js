const db = require("../config/db.config.js");

const salida = db.salidas;

// FETCH all Users

exports.post = async (req, res) => {
  let obj = JSON.stringify(req.body);

  salida
    .create({
      unidad: req.body.unidad,
      pvr: obj,
      idUsuario: req.body.idUsuario,
      correlativo: req.body.correlativo,
    })
    .then((user) => {
      res.status(200).send({ message: "SALIDA REGISTRADA" });
    })
    .catch((err) => {
      res.status(500).send({ message: err.message });
    });
};

exports.findOnePvr = async (req, res) => {
  await salida
    .findOne({
      where: {
        correlativo: req.params.id,
      },
    })
    .then((resp) => {
      let obj = JSON.parse(resp.pvr);
      let salida = {};
      let entrada = {};
      Object.assign(
        salida,
        { condicion: obj.salidaCondicion },
        { dato: obj.salida }
      );
      // Object.assign(salida, { salidaDato: obj.salida });
      Object.assign(
        entrada,
        { condicion: obj.entradaCondicion },
        { dato: obj.entrada }
      );

      obj = {
        unidad: obj.unidad,
        chofer: obj.chofer.nombreApellido,
        ayudante: obj.ayudante.nombreApellido,
        operador: obj.idUsuario,
        ruta: obj.ruta.codRuta,
        marca: obj.marca,
        placa: obj.placa,
        tipoUnidad: obj.tipoUnidad,
        salida,
        entrada,
      };

      console.log(obj);
      res.status(200).send(obj);
    });
};

exports.findAll = async (req, res) => {
  await salida
    .findAll()
    .then((resp) => {
      // Send all users to Client
      //res.status(200).send({hola:"go"});

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
exports.findByUnidad = async (req, res) => {
  await salida.findByPk(req.params.id).then((resp) => {
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
exports.findByPvr = async (req, res) => {
  await salida.findByPk(req.params.correlativo).then((resp) => {
    //let obj = JSON.stringify(resp);

    console.log(req.params.correlativo);

    /*let pvr = {
      unidad: obj.unidad,
      placa: obj.placa,
      operador: obj.idUsuario,
      ayudante: obj.ayudante.nombreApellido,
    };*/

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
  const id = req.params.id;
  salida
    .update(
      {
        unidad: req.body.unidad,
      },
      { where: { id: req.params.id } }
    )
    .then(() => {
      res.status(200).send({
        message: "Se actualizo :" + req.body.categorias,
      });
    });
};
exports.delete = (req, res) => {
  const id = req.params.id;
  salida
    .destroy({
      where: { id: id },
    })
    .then(() => {
      res.status(200).send({ message: "Registro Eliminado" });
    });
};
