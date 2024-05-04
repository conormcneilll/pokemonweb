const express = require('express');
const router = express.Router();
const db = require('../connection.ejs'); // Import your database connection module

router.get('/signup', async (req, res) => {

    res.render('signup', { title: 'signup' });

});

module.exports = router;

