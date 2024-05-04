const express = require('express');
const router = express.Router();
const db = require('../connection.ejs'); // Import your database connection module

router.get('/search', async (req, res) => {
    try {
        user = req.query.username
        password = req.query.password
        query = req.query.q

    let results;
        if (query) {
            // Perform search if query is provided
            results = await db.query('SELECT * FROM Cards WHERE Name = ?', [query]);
        } else {
            // If no query provided, fetch all cards
            results = await db.query('SELECT * FROM Cards');
        }

        res.render('search', { results, title: 'Search Results' });
    } catch (err) {
        console.error(err);
        res.render('home', { title: 'Couldnt load the cards' });
    }
});

module.exports = router;

