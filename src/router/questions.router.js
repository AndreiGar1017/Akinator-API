//Libraries
const express = require('express');
const router = require("express").Router();
const Question = require('../model/cuestions.model');


//POST Question Method
router.post("/", async (req, res)=>{
    if (!req.body) {
        return res.status(400).json({ code: 400, message: "Cuerpo de solicitud vacío" });
    }
    const {desc, property, type } = req.body;
    await Question.create({
        question_desc: desc,
        question_property: property,
        question_type: type
    })
    return res.status(201).json({code:201, message:"Pregunta insertada correctamente"});
});


//Exporting Module
module.exports = router;