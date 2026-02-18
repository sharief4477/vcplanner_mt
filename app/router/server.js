app.use(async (req, res, next) => {//middleware for logs
    console.log('RouterMethod:', req.method);
    console.log('URL:', req.originalUrl);

    
        next(); 
    });