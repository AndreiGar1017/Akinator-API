//Libraries
const express = require('express')
const morgan = require('morgan')
const playerRouter = require('../router/players.router')
const questionRouter = require('../router/questions.router')
const userRouter = require('../router/user.router')
const authRoutes = require('../router/auth.router')
const cors = require('cors');
const app = express();
const path = require('path')


//Express Utilities
app.use(morgan("dev"));
app.use(express.json());
app.use(cors());


//Auth Route
app.use('/login',express.static(path.join(__dirname, '../../frontend/login')))
app.use('/signup',express.static(path.join(__dirname, '../../frontend/sign up')))
app.use('/auth', authRoutes);
//Play Route
app.use('/play', express.static(path.join(__dirname, '../../frontend/game')));


//Express Routing
app.use("/api/questions", questionRouter)
app.use("/api/players", playerRouter)
app.use("/api/users", userRouter)


//Exporting Module
module.exports = app;
