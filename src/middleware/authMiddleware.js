const jwt = require('jsonwebtoken');
const { verifyToken } = require('../utils/auth');

const authenticateToken = (req, res, next) => {
    const token = req.headers.authorization;
    if (!token) {
        return res.status(401).json({ message: 'Token no proporcionado' });
    }

    const result = verifyToken(token);

    if (!result || !result.valid) {
        return res.status(401).json({ message: 'Token inválido' });
    }

    req.user = result.decoded; // El objeto decoded contiene la información del usuario
    next();
};

module.exports = { authenticateToken };
