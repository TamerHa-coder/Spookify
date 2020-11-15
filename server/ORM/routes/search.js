const { Router } = require("express");
const { Client } = require("@elastic/elasticsearch");
require("dotenv").config();
// const { Artist, Song, Album, Playlist } = require("../models");
// const Sequelize = require("sequelize");

const client = new Client({
  cloud: {
    id: process.env.SEARCH_ID,
  },
  auth: {
    username: process.env.SEARCH_USER,
    password: process.env.SEARCH_PASSWORD,
  },
});

const router = Router();

router.get("/songs", (req, res) => {
  const { all, search } = req.query;
  let size = 3;
  if (all === "all") {
    size = 1000;
  }
  client.search(
    {
      index: "songs",
      body: {
        size,
        query: {
          wildcard: {
            title: {
              value: `*${search}*`,
            },
          },
        },
      },
    },
    (err, result) => {
      if (err) console.log(err);
      if (result) res.json(result.body.hits.hits);
    }
  );
});

router.get("/albums", (req, res) => {
  const { all, search } = req.query;
  let size = 3;
  if (all === "all") {
    size = 1000;
  }
  client.search(
    {
      index: "albums",
      body: {
        size,
        query: {
          wildcard: {
            name: {
              value: `*${search}*`,
            },
          },
        },
      },
    },
    (err, result) => {
      if (err) console.log(err);
      if (result) res.json(result);
    }
  );
});

router.get("/artists", (req, res) => {
  const { all, search } = req.query;
  let size = 3;
  if (all === "all") {
    size = 1000;
  }
  client.search(
    {
      index: "artists",
      body: {
        size,
        query: {
          wildcard: {
            name: {
              value: `*${search}*`,
            },
          },
        },
      },
    },
    (err, result) => {
      if (err) console.log(err);
      if (result) res.json(result.body.hits.hits);
    }
  );
});

router.get("/playlists", (req, res) => {
  const { all, search } = req.query;
  let size = 3;
  if (all === "all") {
    size = 1000;
  }
  client.search(
    {
      index: "playlists",
      body: {
        size,
        query: {
          wildcard: {
            name: {
              value: `*${search}*`,
            },
          },
        },
      },
    },
    (err, result) => {
      if (err) console.log(err);
      if (result) res.json(result);
    }
  );
});

module.exports = router;