import React from "react";
import { ListItem, ListItemText, Typography } from "@material-ui/core";
import { Link } from "react-router-dom";

function PlaylistListItem({ playlist }) {
  return (
    <div className="linkListItem">
      <Link
        style={{ textDecoration: "none", color: "white" }}
        to={`/playlist/${playlist.playlist_id}`}
      >
        <ListItem style={{ textAlign: "center" , marginBottom: 25, borderRadius:10, backgroundColor:"#333"}}>
          <ListItemText
            primary={playlist.name}
            secondary={
              <Typography style={{ color: "#e09026", fontSize: 12 }}>
                {new Date(playlist.upload_at.slice(0, 10)).toDateString()}
              </Typography>
            }
          />
          {playlist.cover_img && (
            <img
              alt="playlist cover"
              className="artistImg"
              src={playlist.cover_img}
              style={{height:60, width: 60}}
            />
          )}
        </ListItem>
      </Link>
    </div>
  );
}

export default PlaylistListItem;
