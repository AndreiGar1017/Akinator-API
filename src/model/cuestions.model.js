//Libraries
const { Sequelize, Model, DataTypes } = require("sequelize")

//Sequelize DB Connection 
const sequelize = new Sequelize ("akinator","root","",{
    host: "localhost",
    dialect: "mysql",
    port: "3306"
})

class Question extends Model{}

Question.init({
        question_id:{
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        question_desc:{
            type: DataTypes.STRING,
            allowNull: false
        },
        question_property:{
            type: DataTypes.STRING,
            allowNull:false
        },
        question_type:{
            type: DataTypes.INTEGER,
            allowNull: false,
            validate: {
                isInt:{
                    msg: 'La columna "question_type" debe ser un numero entero',
                },
                min: {
                    args: [1],
                    msg: 'La columna "question_type" debe tener un valor 1 o 2'
                },
                max:{
                    args:[2],
                    msg: 'La columna "question_type" debe tener un valor de 1 o 2'
                }
            }
        }
    }, {
        sequelize,
        modelName: "Question",
    }
);

//Exporting Module
module.exports = Question;