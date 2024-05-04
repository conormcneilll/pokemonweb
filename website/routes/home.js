const express = require('express');
const router = express.Router();
const db = require('../connection.ejs'); // Import your database connection module

router.get('/', async (req, res) => {
    try {
        // Fetch Pokémon card data from the database using the query function
        const pokemonCards = await db.query('SELECT * FROM Cards');

        // Render the home view with the fetched Pokémon card data
        res.render('home', { pokemonCards, title: '' });
    } catch (error) {
        console.error('Error fetching Pokémon card data:', error);
        res.status(500).send('Internal Server Error');
    }
});

module.exports = router;

