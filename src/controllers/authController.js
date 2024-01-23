const bcrypt = require('bcrypt');
const User = require('../model/user.model'); 
const { generateToken } = require('../utils/auth');

const login = async (req, res) => {
    const { user_email, user_password } = req.body;
    try {
        const user = await User.findOne({ where: { user_email } });
        if (user && (await bcrypt.compare(user_password, user.user_password))) {
            const token = generateToken(user);
            res.json({ token });
        } else {
            res.status(401).json({ message: 'Credenciales incorrectas' });
        }
    } catch (error) {
        console.error(error);
        res.status(500).json({ message: 'Error de servidor' });
    }
    
};

const signup = async (req, res) => {
    const { user_email, user_name, user_password } = req.body;
    console.log(req.body)
    try {
        const existingUser = await User.findOne({ where: { user_email } });

        if (existingUser) {
            return res.status(400).json({ message: 'El usuario ya existe' });
        }
        const hashedPassword = await bcrypt.hash(user_password, 10);
        const newUser = await User.create({
            user_email: user_email,
            user_name: user_name,
            user_password: hashedPassword,
            user_hits: 0, // Puedes ajustar esto según tus necesidades
        });

        const token = generateToken(newUser);
        console.log(token)
        res.json({ token });
    } catch (error) {
        console.error(error);
        res.status(500).json({ message: 'Error de servidor' });
    }
};

module.exports = { login, signup };
