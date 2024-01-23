//Libraries
const express = require('express');
const router = require("express").Router();
const User = require("../model/user.model");

//GET Player Method
router.get("/:name", async (req, res) => {
    const user_mail = req.params.name;

    try {
        const userHitsData = await User.findAll({
            attributes: ['user_hits', 'user_name'],
            where: {
                user_email: user_mail
            },
        });

        if (userHitsData.length > 0) {
            const { user_hits, user_name } = userHitsData[0];
            res.status(200).json({ hits: user_hits, user_name });
        } else {
            res.status(404).json({ error: 'Usuario no encontrado' });
        }
    } catch (error) {
        console.error('Error al obtener datos del usuario:', error);
        res.status(500).json({ error: 'Error en el servidor' });
    }
});



router.put("/:name",async(req, res)=>{
    const user_mail = req.params.name;
    if (!req.body) {
        return res.status(400).json({ code: 400, message: "Cuerpo de solicitud vacío" });
    }
    const { user_hits } = req.body;
    try{
        await User.update({ 
            user_hits: user_hits
        }, 
        {
            where: {
                user_email: user_mail
            }
        })
        return res.status(201).json({code:201, message:"Hit actualizado correctamente"});
    }catch(error){
        console.error('Error al actualizar jugadores:', error);
        res.status(500).json({error: 'Error en el servidor'});
    }
});

module.exports = router;