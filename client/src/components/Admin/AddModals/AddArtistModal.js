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

function AddArtistModal({ getArtists }) {
  const classes = useStyles();
  const modalStyle = getModalStyle();
  const [open, setOpen] = useState(false);
  const [name, setName] = useState("");
  const [coverImg, setCoverImg] = useState("");

  const handleOpen = () => {
    setOpen(true);
  };

  const handleClose = () => {
    setOpen(false);
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    const newArtist = {
      name,
      cover_img: coverImg,
      upload_at: new Date().toISOString().slice(0, 10),
    };
    await axios.post(`/artist`, newArtist);
    getArtists();
    handleClose();
  };

  const body = (
    <div style={modalStyle} className={classes.paper}>
      <h2 style={{ textAlign: "center" }}>Add New Artist</h2>
      <form onSubmit={handleSubmit}>
        <TextField
          style={{ width: 400 }}
          required={true}
          label="Artist Name"
          onChange={(e) => {
            setName(e.target.value);
          }}
        />
        <br />
        <TextField
          style={{ width: 400 }}
          label="Cover Img"
          onChange={(e) => {
            setCoverImg(e.target.value);
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

export default AddArtistModal;
