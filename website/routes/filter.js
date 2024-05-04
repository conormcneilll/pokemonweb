const express = require('express');
const router = express.Router();
const db = require('../connection.ejs'); // Import your database connection module

router.get('/filter', async (req, res) => {
    try {
        user = req.query.username
        password = req.query.password

        search = req.query.search

        const results = await db.query('SELECT * FROM Cards WHERE Name = (?)', [search]);
        res.render('browsecards', {results, title: 'Filtered' });
    } catch (err) {
        console.error(err);
        res.render('home', {title: 'Did not match' });
    }

});


module.exports = router;