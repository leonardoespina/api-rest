module.exports = (sequelize, Sequelize) => {
  const rutas = sequelize.define("rutas", {
    ruta: {
      type: Sequelize.STRING,
    },
    codRuta: {
      type: Sequelize.STRING,
    },

    idUsuario: {
      type: Sequelize.STRING,
    },
    idSupervisor: {
      type: Sequelize.BOOLEAN,
    },
    idSector: {
      type: Sequelize.INTEGER,
    },
  });

  return rutas;
};
