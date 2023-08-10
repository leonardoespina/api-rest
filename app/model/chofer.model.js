module.exports = (sequelize, Sequelize) => {
  const chofer = sequelize.define("choferes", {
    nombreApellido: {
      type: Sequelize.STRING,
    },
    cedula: {
      type: Sequelize.STRING,
    },
    telefono: {
      type: Sequelize.STRING,
    },
    idUsuario: {
      type: Sequelize.STRING,
    },
  });

  return chofer;
};
