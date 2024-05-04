const express = require('express');
const router = express.Router();
const db = require('../connection.ejs'); // Import your database connection module

router.get('/login', async (req, res) => {

    res.render('login', { title: 'login' });

});

module.exports = router;

