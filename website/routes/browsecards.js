const express = require('express');
const router = express.Router();
const db = require('../connection.ejs'); // Import your database connection module

router.get('/browsecards', async (req, res) => {
    try {
        user = req.query.username
        password = req.query.password

        const results = await db.query('SELECT * FROM Cards');
        res.render('browsecards', {results, title: 'All the cards' });
    } catch (err) {
        console.error(err);
        res.render('home', {title: 'Couldnt load the cards' });
    }

});


module.exports = router;

