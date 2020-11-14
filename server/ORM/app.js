const express = require("express");

const jwt = require("jsonwebtoken");

const app = express();

app.use(express.json());

app.use(logger);

function logger (req, res, next) {
    console.log('request fired ' + req.url + ' ' + req.method);
    next();
}


app.use('/user', require("./routes/users"))
app.use(ensureToken);
app.use('/artist', require("./routes/artists"))
app.use('/playlist', require("./routes/playlists"))
app.use('/song', require("./routes/songs"))
app.use('/album', require("./routes/albums"))

module.exports = app;