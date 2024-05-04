/// imports
require('dotenv').config();
const express = require("express");
const sessions = require('express-session');
const fs = require('fs');
const mysql = require('mysql2')

/// app and ports 
const app = express();
const APP_PORT = process.env.APP_PORT || 3000;

app.set('view engine', 'ejs');
app.use(express.urlencoded({extended: true}))
app.use(express.static('static'));

app.use(sessions({
  secret: process.env.SESSIONS_SECRET,
   saveUninitialized: false,
    resave: false
    })
);

//app.use(express.urlencoded({extended: true})); 


app.use(sessions({
    secret: process.env.SESSIONS_SECRET,
    saveUninitialized: false,
    resave: false
}));


/// my middleware
app.use((req, res, next) => {
    res.locals.query = req.query;
    res.locals.user_id = req.session.user_id;
    res.locals.member = req.session.sess_valid;
    next();

}); /// exposes session to ejs templates

/// route handler
const routeFiles = fs.readdirSync('./routes')
    .filter(file => ( file.endsWith('.js') && !file.startsWith('_') ));
for (const file of routeFiles) {
	const route = require(`./routes/${file}`);
    routePath = file.slice(0,-3);
    if (file=='home.js') routePath="";
	app.get(`/${routePath}`, route);
    if(file == 'createuser.js') app.post(`/${routePath}`, route);

}
// console.log("Routes:", routeFiles);

// app.get('/login', async (req, res) => {
    
// });

const errorHandler = (err, req, res, next) => {
    console.error(err.stack);
    res.status(500).send(`Something went wrong: ${err.message}`);
  };

  app.use(errorHandler);

 
/// server
const server = app.listen(APP_PORT, () => {
    console.log(`App started at http://localhost:${server.address().port}/`);
}); 
