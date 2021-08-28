var express = require('express');
var path = require('path');
var fs = require('fs');
var app = express();

app.get('/', function (req, res) {
    res.sendFile(path.join(__dirname, "index.html"));
});

app.get('/pic', function (req, res) {
    var img = fs.readFileSync('pic.png');
    res.writeHead(200, {'Content-Type': 'image/jpg' });
    res.end(img, 'binary');
});

app.listen(3000, function () {
    console.log("Looks good. Node.js app is listening on :1337");
});