import React, { useState } from "react";
import axios from "axios";
import { Modal, TextField, Button } from "@material-ui/core";
import { makeStyles } from "@material-ui/core/styles";

function getModalStyle() {
  return {
    top: "50%",
    left: "50%",
    transform: "translate(-50%, -50%)",
  };
}

const useStyles = makeStyles((theme) => ({
  paper: {
    position: "absolute",
    width: 400,
    backgroundColor: theme.palette.background.paper,
    border: "2px solid #000",
    boxShadow: theme.shadows[5],
    padding: theme.spacing(2, 4, 3),
  },
}));

function AddSongModal({ getSongs, artists, albums }) {
  const classes = useStyles();
  const modalStyle = getModalStyle();
  const [open, setOpen] = useState(false);
  const [youtubeLink, setYoutubeLink] = useState("");
  const [albumId, setAlbumId] = useState("");
  const [artistId, setArtistId] = useState("");
  const [title, setTitle] = useState("");
  const [length, setLength] = useState("");
  const [trackNumber, setTrackNumber] = useState("");
  const [lyrics, setLyrics] = useState("");
  const [createdAt, setCreatedAt] = useState("");

  const handleOpen = () => {
    setOpen(true);
  };

  const handleClose = () => {
    setOpen(false);
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    if (String(new Date(createdAt)) === "Invalid Date") {
      alert("Invalid Date Entered");
    } else if (isNaN(trackNumber)) {
      alert("Invalid Track Number Entered");
    } else if (!/^([0-5][0-9]):([0-5][0-9])$/.test(length)) {
      alert('Invalid Length Entered (Length should look like: "xx:xx")');
    } else {
      const newSong = {
        youtube_link: youtubeLink,
        album_id: albumId,
        artist_id: artistId,
        title,
        length: "00:".concat(length),
        track_number: trackNumber,
        lyrics,
        created_at: new Date(createdAt).toISOString().slice(0, 10),
        upload_at: new Date().toISOString().slice(0, 10),
      };
      await axios.post(`/song`, newSong);
      getSongs();
      handleClose();
    }
  };

  const body = (
    <div style={modalStyle} className={classes.paper}>
      <h2 style={{ textAlign: "center" }}>Add New Song</h2>
      <form onSubmit={handleSubmit}>
        <TextField
          required={true}
          style={{ width: 400 }}
          label="Youtube Link"
          onChange={(e) => {
            setYoutubeLink(e.target.value);
          }}
        />
        <select
          required
          onChange={(e) => {
            setArtistId(e.target.value);
            setAlbumId(undefined);
          }}
        >
          <option value="" disabled selected>
            Select An Artist
          </option>
          {artists.map((artist) => (
            <option key={artist.artist_id} value={artist.artist_id}>
              {artist.name}
            </option>
          ))}
        </select>
        <select
          required
          onChange={(e) => {
            setAlbumId(e.target.value);
          }}
        >
          <option value="" selected>
            Select An Album
          </option>
          {albums.filter((album) => album.artist_id === Number(artistId)).map((album) => (
                <option key={album.album_id} value={album.album_id}>
                  {album.name}
                </option>
              )
          )}
        </select>
        <TextField
          required={true}
          style={{ width: 400 }}
          label="Title"
          onChange={(e) => {
            setTitle(e.target.value);
          }}
        />
        <br />
        <TextField
          required={true}
          style={{ width: 400 }}
          label="Length"
          onChange={(e) => {
            setLength(e.target.value);
          }}
        />
        <br />
        <TextField
          required={true}
          style={{ width: 400 }}
          label="Track Number"
          onChange={(e) => {
            setTrackNumber(e.target.value);
          }}
        />
        <br />
        <TextField
          style={{ width: 400 }}
          label="Lyrics"
          onChange={(e) => {
            setLyrics(e.target.value);
          }}
        />
        <br />
        <TextField
          required={true}
          style={{ width: 400 }}
          label="Created At"
          onChange={(e) => {
            setCreatedAt(e.target.value);
          }}
        />
        <br />
        <Button
          style={{ backgroundColor: "#e09026", margin: 10 }}
          variant="contained"
          color="primary"
          type="submit"
          id="submit"
        >
          Submit
        </Button>
      </form>
    </div>
  );

  return (
    <>
      <button onClick={handleOpen} className="updateButton">
        Add
      </button>
      <Modal open={open} onClose={handleClose}>
        {body}
      </Modal>
    </>
  );
}

export default AddSongModal;
