const express = require('express');
const cors = require('cors');
const utenti = require('./utenti');
const post = require('./post');
const squadra = require('./squadra');
const risposte = require('./risposte');

const app = express();
app.use(cors());
app.use('/', utenti);
app.use('/', post);
app.use('/', squadra);
app.use('/', risposte);

app.listen(3000, () => {
    console.log('Server running ...');
})
