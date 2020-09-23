const mysql = require("mysql");
const express = require("express");
const bodyParser = require("body-parser");

var app = express()

app.use(bodyParser.urlencoded({ extended: true }));
var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '767499246'
});

connection.connect(function (err) {
    if (err) {
        console.error('error connecting: ' + err.stack);
        return;
    }

    console.log('connected as id ' + connection.threadId);
});

app.listen(3000);