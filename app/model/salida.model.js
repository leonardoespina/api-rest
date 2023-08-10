module.exports = (sequelize, Sequelize) => {
  const salidas = sequelize.define("salidas", {
    unidad: {
      type: Sequelize.TEXT,
    },
    pvr: {
      type: Sequelize.TEXT,
    },
    idUsuario: {
      type: Sequelize.TEXT,
    },
    pvrSalida: {
      type: Sequelize.TEXT,
    },
    correlativo: {
      type: Sequelize.TEXT,
    },
  });

  return salidas;
};
