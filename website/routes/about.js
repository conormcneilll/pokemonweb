const express = require('express');
const router = express.Router();
const db = require('../connection.ejs'); // Import your database connection module

router.get('/about', async (req, res) => {

    res.render('about', { title: 'about' });

});

module.exports = router;

