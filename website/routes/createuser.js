const express = require('express');
const router = express.Router();
const db = require('../connection.ejs'); // Import your database connection module

router.post('/createuser', async (req, res) => {
    try {
        user = req.body.username
        password = req.body.password
        fname = req.body.firstname
        sname = req.body.secondname
        email = req.body.email


        const results = await db.query('INSERT INTO Users (Username, FirstName, SecondName, Password, Email) VALUES(?,?,?,?,?)', [user, fname, sname, password, email]);
        res.render('home', {title: 'User Created Successfully. Please log in.' });
    } catch (err) {
        console.error(err);
        res.render('home', {title: 'Could not create user, please try again.' });
    }

    // closes the connection
    res.end()
});


module.exports = router;

