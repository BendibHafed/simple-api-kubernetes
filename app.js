// app.js
var express = require('express');
var app = express();
require('dotenv').config();

app.get('/', function(req, res) {
    res.send('<h2> Hello ' + process.env.FIRSTNAME + ' ' + process.env.LASTNAME + '</h2>');
});

app.listen(3000, () => {
    console.log('Server running on port 3000');
});
