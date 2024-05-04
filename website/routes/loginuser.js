const express = require('express');
const router = express.Router();
const db = require('../connection.ejs'); // Import your database connection module

router.get('/loginuser', async (req, res) => {
    try {
        user = req.query.username
        password = req.query.password

        const results = await db.query('SELECT Username, Password FROM Users WHERE Username = (?) AND Password = (?) ', [user, password]);
        res.render('home', {title: 'Logged in' });
    } catch (err) {
        console.error(err);
        res.render('home', {title: 'Could not log you in please try again.' });
    }

});


module.exports = router;

