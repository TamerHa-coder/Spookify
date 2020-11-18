const express = require('express');
var mysql = require('mysql');
const app = express();

app.use(express.json());
app.use(logger);

function logger (req, res, next) {
    console.log('request fired ' + req.url + ' ' + req.method);
    next();
}

let mysqlCon = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "12345",
    database: "spookify",
    multipleStatements: true
  });

mysqlCon.connect(err => {
    if (err) throw err;
    console.log("Connected!");
});
mysqlCon.query("SELECT * FROM artists", (err, result, fields) => {
    if (err) throw err;
  });

// All get by id endpoints

app.get("/album", (req, res) => {
    let sql; 
    if (req.query.search) {
      sql = `SELECT albums.*, artists.name AS artist FROM albums
      JOIN artists ON albums.artist_id = artists.artist_id
      WHERE albums.name LIKE '%${req.query.search}%'
      ORDER BY albums.created_at DESC`;
    } else {
      sql = `SELECT albums.*, artists.name AS artist FROM albums
      JOIN artists ON albums.artist_id = artists.artist_id
      ORDER BY albums.created_at DESC`;
    }
    mysqlCon.query(sql, (err, data) => {
        if (err) res.send(err.message);
        res.send(data);
    })
  });

  app.get("/song", (req, res) => {
    let sql;
    if (req.query.search) {
      sql = `SELECT songs.*, albums.name As album, artists.name As artist FROM songs
      JOIN artists ON artists.artist_id = songs.artist_id
      JOIN albums ON albums.album_id = songs.album
      WHERE songs.title LIKE '%${req.query.search}%'
      ORDER BY songs.created_at DESC`
    } else {
      sql = `SELECT songs.*, albums.name As album, artists.name As artist FROM songs
      JOIN artists ON artists.artist_id = songs.artist_id
      JOIN albums ON albums.album_id = songs.album
      ORDER BY songs.created_at DESC`;
    }
    mysqlCon.query(sql, (err, data) => {
        if (err) res.send(err.message);
        res.send(data);
    })
  });

  app.get("/artist", (req, res) => {
    let sql;
    if (req.query.search) {
      sql = `SELECT * FROM artists WHERE artists.name LIKE '%${req.query.search}%'`;
    } else {
      sql = `SELECT * FROM artists`;
    }
    mysqlCon.query(sql, (err, data) => {
        if (err) res.send(err.message);
        res.send(data);
    })
  });

  app.get("/playlist", (req, res) => {
    let sql;
    if (req.query.search) {
      sql = `SELECT * FROM playlist WHERE playlist.name LIKE '%${req.query.search}%'`;
    } else {
      sql = `SELECT * FROM playlist`;
    }
    mysqlCon.query(sql, (err, data) => {
        if (err) res.send(err.message);
        res.send(data);
    })
  });

// get by id

app.get("/song/:id", (req, res) => {
    const sql = `SELECT * FROM songs WHERE song_id = ${req.params.id}`;
    mysqlCon.query(sql, (err, data) => {
        if (err) res.send(err.message);
        res.send(data);
    })
});

app.get("/artist/:id", (req, res) => {
    const sql = `SELECT * FROM artists WHERE artist_id = ${req.params.id}`;
    mysqlCon.query(sql, (err, data) => {
        if (err) res.send(err.message);
        res.send(data);
    })
  });

app.get("/album/:id", (req, res) => {
  const sql = `SELECT albums.*, artists.name AS artist 
  FROM albums JOIN artists ON albums.artist_id = artists.artist_id
  WHERE albums.album_id = ${req.params.id}`;
  mysqlCon.query(sql, (err, data) => {
      if (err) res.send(err.message);
      res.send(data);
  })
});

app.get("/playlist/:id", (req, res) => {
    const sql = `SELECT * FROM playlist WHERE playlist_id = ${req.params.id}`;
    mysqlCon.query(sql, (err, data) => {
        if (err) res.send(err.message);
        res.send(data);
    })
});

//  get top 20 endpoints
  
app.get("/top_songs", (req, res) => {
    const sql = `SELECT songs.*, albums.name As album, artists.name As artist FROM songs
    JOIN artists ON artists.artist_id = songs.artist_id
    JOIN albums ON albums.album_id = songs.album 
    ORDER BY songs.created_at DESC
    LIMIT 20`;
    mysqlCon.query(sql, (err, data) => {
        if (err) res.send(err.message);
        res.send(data);
    })
  });

  app.get("/top_artists", (req, res) => {
    const sql = `SELECT * FROM artists LIMIT 20`;
    mysqlCon.query(sql, (err, data) => {
        if (err) res.send(err.message);
        res.send(data);
    })
  });

  app.get("/top_albums", (req, res) => {
    const sql = `SELECT albums.*, artists.name AS artist FROM albums
    JOIN artists ON albums.artist_id = artists.artist_id
    ORDER BY albums.created_at DESC
    LIMIT 20`;
    mysqlCon.query(sql, (err, data) => {
        if (err) res.send(err.message);
        res.send(data);
    })
  });

  app.get("/top_playlists", (req, res) => {
    const sql = `SELECT * FROM playlist LIMIT 20`;
    mysqlCon.query(sql, (err, data) => {
        if (err) res.send(err.message);
        res.send(data);
    })
  });

// Get songs from album 

    app.get("/albumsongs/:id", (req, res) => {
      if (isNaN(Number(req.params.id))) {
        return res.status(400).send('Id must be a number')
      }
      const sql = `SELECT songs.*, albums.name As album, artists.name As artist FROM songs
      JOIN artists ON artists.artist_id = songs.artist_id
      JOIN albums ON albums.album_id = songs.album 
      WHERE songs.album = ${req.params.id}`;
      mysqlCon.query(sql, (err, data) => {
          if (err) res.send(err.message);
          res.send(data);
      })
    });

  // Get songs from Artist

    app.get("/artistsongs/:id", (req, res) => {
        if (isNaN(Number(req.params.id))) {
          return res.status(400).send('Id must be a number')
        }
          const sql = `SELECT songs.*, albums.name As album, artists.name As artist FROM songs
          JOIN artists ON artists.artist_id = songs.artist_id
          JOIN albums ON albums.album_id = songs.album 
          WHERE songs.artist_id = ${req.params.id}`;
          mysqlCon.query(sql, (err, data) => {
                if (err) res.send(err.message);
                res.send(data);
            })
      });

// Get albums from Artist

    app.get("/artistalbums/:id", (req, res) => {
        if (isNaN(Number(req.params.id))) {
          return res.status(400).send('Id must be a number')
        }
          const sql = `SELECT albums.*, artists.name As artist FROM albums
          JOIN artists ON artists.artist_id = albums.artist_id
          WHERE albums.artist_id = ${req.params.id}`;
          mysqlCon.query(sql, (err, data) => {
              if (err) res.send(err.message);
              res.send(data);
          })
      
      });

// Get all songs from a single Playlist 

   app.get("/playlistsongs/:id", (req, res) => {
       if (isNaN(Number(req.params.id))) {
         return res.status(400).send('Id must be a number')
       }
       const sql = `SELECT songs.*, albums.name As album, artists.name As artist FROM songs
       JOIN artists ON artists.artist_id = songs.artist_id
       JOIN albums ON albums.album_id = songs.album 
       JOIN song_in_playlist ON song_in_playlist.song_id = songs.song_id
       WHERE song_in_playlist.playlist_id =  ${req.params.id}`;
       mysqlCon.query(sql, (err, data) => {
           if (err) res.send(err.message);
           res.send(data);
       })
     });

// All post endpoints

app.post("/song", (req, res) => {
    const { body } = req;
    if (!body) {
        res.status(400).send("content missing");
    }
    const sql = `INSERT INTO songs SET ?`;
    mysqlCon.query(sql, body, (err, data) => {
        if (err) res.send(err.message);
        res.send('song added successfully');
    })
});

app.post("/album", (req, res) => {
    const { body } = req;
    if (!body) {
        res.status(400).send("content missing");
    }
    const sql = `INSERT INTO albums SET ?`;
    mysqlCon.query(sql, body, (err, data) => {
        if (err) res.send(err.message);
        res.send('album added successfully');
    })
});

app.post("/artist", (req, res) => {
    const { body } = req;
    if (!body) {
        res.status(400).send("content missing");
    }
    const sql = `INSERT INTO artists SET ?`;
    mysqlCon.query(sql, body, (err, data) => {
        if (err) res.send(err.message);
        res.send('artist added successfully');
    })
});

app.post("/playlist", (req, res) => {
    const { body } = req;
    if (!body) {
        res.status(400).send("content missing");
    }
    const sql = `INSERT INTO playlist SET ?`;
    mysqlCon.query(sql, body, (err, data) => {
        if (err) res.send(err.message);
        res.send('playlist added successfully');
    })
  });

// All put endpoints

app.put("/song/:id", (req, res) => {
    const { body } = req;
      if (!body) {
          res.status(400).send("content missing");
      }
    const sql = `UPDATE songs SET ? WHERE song_id = ${req.params.id}`;
    mysqlCon.query(sql, body, (err, data) => {
        if (err) res.send(err.message);
        res.send('updated');
    })
});

app.put("/artist/:id", (req, res) => {
  const { body } = req;
    if (!body) {
        res.status(400).send("content missing");
    }
  const sql = `UPDATE artists SET ? WHERE artist_id = ${req.params.id}`;
  mysqlCon.query(sql, body, (err, data) => {
      if (err) res.send(err.message);
      res.send('updated');
  })
});

app.put("/album/:id", (req, res) => {
    const { body } = req;
      if (!body) {
          res.status(400).send("content missing");
      }
    const sql = `UPDATE albums SET ? WHERE album_id = ${req.params.id}`;
    mysqlCon.query(sql, body, (err, data) => {
        if (err) res.send(err.message);
        res.send('updated');
    })
});

app.put("/playlist/:id", (req, res) => {
    const { body } = req;
      if (!body) {
          res.status(400).send("content missing");
      }
    const sql = `UPDATE playlist SET ? WHERE playlist_id = ${req.params.id}`;
    mysqlCon.query(sql, body, (err, data) => {
        if (err) res.send(err.message);
        res.send('updated');
    })
});

//All delete endpoints

app.delete("/song/:id", (req, res) => {
    const sql = `DELETE FROM songs WHERE song_id = ${req.params.id}`;
    mysqlCon.query(sql, (err, data) => {
        if (err) res.send(err.message);
        res.send('Song deleted');
    })
});

app.delete("/artist/:id", (req, res) => {
    const sql = `DELETE FROM artists WHERE artist_id = ${req.params.id}`;
    mysqlCon.query(sql, (err, data) => {
        if (err) res.send(err.message);
        res.send('DELETED');
    })
});

app.delete("/album/:id", (req, res) => {
    const sql = `DELETE FROM albums WHERE album_id = ${req.params.id}`;
    mysqlCon.query(sql, (err, data) => {
        if (err) res.send(err.message);
        res.send('DELETED');
    })
});

app.delete("/playlist/:id", (req, res) => {
    const sql = `DELETE FROM playlist WHERE playlist_id = ${req.params.id}`;
    mysqlCon.query(sql, (err, data) => {
        if (err) res.send(err.message);
        res.send('DELETED');
    })
});

app.listen('3001', () =>{
    console.log('server srtarted on port 3001')
});