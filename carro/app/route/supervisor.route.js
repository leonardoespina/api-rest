module.exports = function (app) {
  const val = "supervisores";
  const controll = "supervisor";

  const controller = require(`../controller/${controll}.controller.js`);

  // Create Empresa
  app.post(`/api/${val}/All`, controller.findAll);
  app.post(`/api/${val}/`, controller.post);
  app.get(`/api/${val}/:id`, controller.findById);
  app.get(`/api/supervisoresCedula/:id`, controller.findByIdSupervisor);
  app.put(`/api/${val}/:id`, controller.update);
  app.delete(`/api/${val}/:id`, controller.delete);

  /////const auth = require("../middleware/auth.js");
};
