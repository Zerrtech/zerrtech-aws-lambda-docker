const express = require('express');
var bodyParser = require('body-parser');
// load a bunch of packages I don't use to emulate a mature code base
const sequelize = require('sequelize');
const xlsx = require('xlsx');
const d3 = require('d3');
const moment = require('moment');
const helmet = require('helmet');
const passport = require('passport');

const app = express();

// parse application/json
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

app.get('/test_nodejs_express_native', (req, res) => {
    const body = {
        message: "Hello"
    };
    res.status(200).json(body);
});

app.get('/test_nodejs_express_docker', (req, res) => {
    const body = {
        message: "Hello"
    };
    res.status(200).json(body);
});

module.exports = app