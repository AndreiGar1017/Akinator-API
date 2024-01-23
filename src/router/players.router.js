//Libraries
const express = require('express');
const router = require("express").Router();
const Player = require("../model/players.model");
const Question = require('../model/cuestions.model');

//GET Player Method
router.get("/",async(req, res)=>{
    try {
        const players = await Player.findAll();
        const questions = await Question.findAll();
        res.status(200).json({ players, questions });
    } catch (error) {
        console.error('Error al obtener jugadores:', error);
        res.status(500).json({ error: 'Error interno del servidor' });
    }
});

//POST Player Method
router.post("/", async (req, res)=>{
    if (!req.body) {
        return res.status(400).json({ code: 400, message: "Cuerpo de solicitud vacío" });
    }
    const { name, club, country, age, number, position, img } = req.body;
    try{
    await Player.create({
            player_name: name,
            player_club: club,
            player_country: country,
            player_age: age,
            player_number: number,
            player_position: position,
            player_img: img
        })
        return res.status(201).json({code:201, message:"Player insertado correctamente"});
    }catch(error){
        console.error('Error al agregar jugadores:', error);
        res.status(500).json({error: 'Error en el servidor'});
    }
});


//PUT Player Method
router.put("/:id([0-9]{1,3})",async(req, res)=>{
    if (!req.body) {
        return res.status(400).json({ code: 400, message: "Cuerpo de solicitud vacío" });
    }
    const { name, club, country, age, number, position, img } = req.body;
    try{
        await Player.update({ 
            player_name: name,
            player_club: club,
            player_country: country,
            player_age: age,
            player_number: number,
            player_position: position,
            player_img: img
        }, 
        {
            where: {
                player_id: req.params.id
            }
        })
        return res.status(201).json({code:201, message:"Player actualizado correctamente"});
    }catch(error){
        console.error('Error al actualizar jugadores:', error);
        res.status(500).json({error: 'Error en el servidor'});
    }
});


//DELETE Player Method
router.delete("/:id([0-9]{1,3})",async(req, res)=>{
    try{
        await Player.destroy({
            where: {
                player_id: parseInt(req.params.id)
            }
        });
        return res.status(201).json({code:201, message:"Player eliminado correctamente"});
    }catch(error){
        console.error('Error al eliminar jugadores:', error);
        res.status(500).json({error: 'Error en el servidor'});
    }
});


//Exporting Module
module.exports = router;