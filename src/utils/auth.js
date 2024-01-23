const jwt = require('jsonwebtoken');

const generateToken = (user) => {
    const payload = {
        user_id: user.user_id,
        user_email: user.user_email,
    };
const options = {
    expiresIn: '1h',
};

    return jwt.sign(payload, '4KIN4TOR', options);
};

const verifyToken = (token) => {
    try {
        const SECRET_KEY = "4KIN4TOR"
        const decoded = jwt.verify(token, SECRET_KEY);
        return { valid: true, decoded };
    } catch (error) {
        if (error.name === 'TokenExpiredError') {
            return { valid: false, expired: true };
        } else if (error.name === 'JsonWebTokenError') {
            return { valid: false, expired: false, error: 'Error en el token JWT' };
        } else {
            return { valid: false, expired: false, error: 'Error al verificar el token', originalError: error };
        }
    }
};

module.exports = { generateToken, verifyToken };