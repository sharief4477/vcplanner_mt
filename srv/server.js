const cds = require("@sap/cds");
const cov2ap = require("@sap/cds-odata-v2-adapter-proxy");
const cors = require('cors');
cds.on("bootstrap", app => {

    app.use(cors());

  app.use(cov2ap());
});

module.exports = cds.server;
