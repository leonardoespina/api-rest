module.exports = function (app) {
  const val = "salidas";
  const controll = "salida";

  const controller = require(`../controller/${controll}.controller.js`);

  // Create Empresa
  app.post(`/api/${val}/All`, controller.findAll);
  app.get(`/api/${val}/findOnePvr/:id`, controller.findOnePvr);
  app.post(`/api/${val}/`, controller.post);
  app.get(`/api/${val}/:id`, controller.findByUnidad);
  //app.get(`/api/rutasId/:id`, controller.findByIdRuta);
  app.put(`/api/${val}/:id`, controller.update);
  app.delete(`/api/${val}/:id`, controller.delete);

  /////const auth = require("../middleware/auth.js");
};
