//Libraries
const { Sequelize, Model, DataTypes } = require("sequelize")
const bcrypt = require('bcrypt');

//Sequelize DB Connection 
const sequelize = new Sequelize ("akinator","root","",{
    host: "localhost",
    dialect: "mysql",
    port: "3306"
})

class User extends Model{}

User.init({
        user_id:{
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        user_email:{
            type: DataTypes.STRING,
            allowNull: false
        },
        user_name:{
            type: DataTypes.STRING,
            allowNull:false
        },
        user_password: {
            type: DataTypes.STRING,
            allowNull:false
        },
        user_hits: {
            type: DataTypes.INTEGER,
            allowNull: false
        }
    }, {
        sequelize,
        modelName: "User",
    }
    
);

//Exporting Module
module.exports = User;