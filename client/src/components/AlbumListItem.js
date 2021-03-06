import React from "react";
import { ListItem, ListItemText, Typography } from "@material-ui/core";
import { Link } from "react-router-dom";

function AlbumListItem({ album }) {
  return (
    <div className="linkListItem">
      <Link
        style={{ textDecoration: "none", color: "white" }}
        to={`/album/${album.album_id}`}
      >
        <ListItem style={{ textAlign: "center" }}>
          <ListItemText
            primary={album.name}
            secondary={
              <Typography style={{ color: "#ca7d26", fontSize: 12 }}>{`${
                album.artist
              } | ${new Date(
                album.created_at.slice(0, 10)
              ).toDateString()}`}</Typography>
            }
          />
          {album.cover_img && (
            <img
              alt="album cover"
              className="artistImg"
              src={album.cover_img}
            />
          )}
        </ListItem>
      </Link>
    </div>
  );
}

export default AlbumListItem;