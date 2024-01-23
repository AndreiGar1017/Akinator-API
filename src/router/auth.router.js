const express = require('express');
const { login, signup } = require('../controllers/authController');

const router = express.Router();

// Ruta para login
router.post('/login', login);

// Ruta para signup
router.post('/signup', signup);

module.exports = router;
