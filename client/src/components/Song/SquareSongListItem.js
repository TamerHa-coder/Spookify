import React from "react";
import {
  Tooltip,
  Zoom,
} from "@material-ui/core";
import { Link } from "react-router-dom";


function SquareSongListItem({ query, song }) {
  return (
    
    <Link
      to={`/song/${song.song_id}?artist=${song.artist_id}`}
      style={{ textDecoration: "none", color: "white" }}
    >
      <div className="newSongGrid">
        <div>
          <Tooltip
            TransitionComponent={Zoom}
            placement="top"
            arrow
            title={new Date(song.created_at).toDateString()}
          >
            <h3>{song.title}</h3>
          </Tooltip>
          <div style={{textAlign: 'center'}}>
              <img alt="Go To Album" className="songImg" src={`https://img.youtube.com/vi/${song.youtube_link.split("v=")[1]}/0.jpg`} />
          </div>
        </div>
        <div>
          <p style={{ fontSize: 15, color: "#e09026", opacity: 0.7, fontWeight: 'bold'}}>{`${song.artist} | ${
            song.album
          } | ${song.length.slice(3, 8)}`}</p>
        </div>
      </div>
    </Link>
  );
}

export default SquareSongListItem;
