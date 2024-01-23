//Libraries
const { Sequelize, Model, DataTypes } = require("sequelize")

//Sequelize DB Connection 
const sequelize = new Sequelize ("akinator","root","",{
    host: "localhost",
    dialect: "mysql",
    port: "3306"
})

//Test DB Connection
// async function testConnection(){
//     try{
//         await sequelize.authenticate()
//         console.log("Succesfull DB Connection")
//     }catch(err){
//         console.log("Something went wrong with the DB Connection: ", err)
//     }
// }
// testConnection();

//Implementing Player Model
class Player extends Model{}

Player.init({
        player_id:{
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        player_name: {
            type: DataTypes.STRING,
            allowNull: false,
        },
        player_club:{
            type: DataTypes.STRING,
            allowNull: false
        },
        player_country:{
            type: DataTypes.STRING,
            allowNull: false
        },
        player_age:{
            type: DataTypes.INTEGER,
            allowNull: false
        },
        player_number:{
            type: DataTypes.INTEGER,
            allowNull: false
        },
        player_position:{
            type: DataTypes.STRING,
            allowNull:false
        },
        player_img:{
            type: DataTypes.STRING,
            allowNull:true
        }
    }, {
        sequelize,
        modelName: "Player",
    }
);

//Exporting Module
module.exports = Player;