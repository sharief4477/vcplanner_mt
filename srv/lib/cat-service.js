
module.exports = (srv) => {

    srv.before('READ', 'getLocation', (req) => {
    console.log("=== DEBUG INFO ===");
    console.log("req.tenant:", req.tenant);
    console.log("cds.context.tenant:", cds.context.tenant);
    console.log("req.user:", req.user);
    console.log("req.headers:", req.headers);
    console.log("================");
    
});

srv.on("getLocationData",async(req)=>{
       console.log("Incoming/Existing",req.tenant,"/",cds.context.tenant);
    cds.context.tenant = req.tenant;

    await new Promise(resolve => setTimeout(resolve, 5000));

  const aData = await cds.run(
    SELECT.from("CP_LOCATION")
  );

  console.log(req.tenant, aData[0]?.LOCATION_DESC);
  console.log("tenant after delay", req.tenant, "/", cds.context.tenant);

  return JSON.stringify(aData);
})
}