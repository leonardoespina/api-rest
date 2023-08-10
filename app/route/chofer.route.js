module.exports = function (app) {
  const chofer = require("../controller/chofer.controller.js");

  // Create Empresa
  app.post("/api/choferes/All", chofer.findAll);
  app.post("/api/choferes/", chofer.post);
  app.get("/api/choferes/:id", chofer.findById);
  app.get("/api/choferesCedula/:id", chofer.findByIdChofer);
  app.put("/api/choferes/:id", chofer.update);
  app.delete("/api/choferes/:id", chofer.delete);

  /////const auth = require("../middleware/auth.js");
};
