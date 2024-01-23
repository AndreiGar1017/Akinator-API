//Libraries
const app = require('./app/app')
const Player = require("./model/players.model")
const Question = require("./model/cuestions.model")
const User = require('./model/user.model')
const port = process.env.PORT || 3001;

//Init Models Tables
Player.sync()
Question.sync()
User.sync()

//Starting API
app.listen(port, ()=>{
    console.log(`Server running on port ${port}`);
})

