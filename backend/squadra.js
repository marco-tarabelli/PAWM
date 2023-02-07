const express = require('express');
const bodyparser = require('body-parser');
const cors = require('cors');
const db = require('./dbService');
const app = express();

app.use(cors());
app.use(bodyparser.json());

app.get('/squadra', (req,res)=>{
    db.query('select * from squadra', (err,result) => {
        if(err){
            console.log('Errore');
        }
        if(result){
            res.send({
                message: "Tutte le squadre",
                data: result
            })
        } else {
            res.send({
                message: "Non sono stati trovati valori" 
            })   
        }
    }
    );
})

app.get('/squadra/:id', (req,res)=>{
    let ID = req.params.id
    db.query('select * from squadra where id_squadra_pk = ?', [ID], (err,result) => {
        if(err){
            console.log('Errore');
        }
        if(result){
            res.send({
                data: result
            })
        } else {
            res.send({
                message: "Non sono stati trovati valori" 
            }) 
        }
    });
})

app.get('/squadra/nome/:nome', (req,res)=>{
    let nomesquadra = req.params.nome;
    db.query('select id_squadra_pk from squadra where nome_squadra = ?', [nomesquadra], (err,result) => {
        if(err){
            console.log('Errore');
        }
        if(result){
            res.send({
                data: result
            })
        } else {
            res.send({
                message: "Non sono stati trovati valori" 
            }) 
        }
    });
})

app.post('/squadra', (req,res) => {
    let nome_squadra = req.body.nome_squadra;
    db.query('insert into squadra(nome_squadra) values(?)', [nome_squadra],(err, result) => {
        if(err){
            console.log('Errore');
        }
        if(result){
            res.send({
                message: "squadra' inserita",
                data: result
            })
        } 
    }) 
})

module.exports = app;