import React from "react";
import {
  ListItem,
  ListItemText,
  Typography,
  Tooltip,
  Zoom,
} from "@material-ui/core";
import { Link } from "react-router-dom";
import PlayCircleFilledIcon from "@material-ui/icons/PlayCircleFilled";

function SongListItem({ song, query }) {
  return (
    <Link
      to={`/song/${song.song_id}?${query.path}=${query.id}`}
      style={{ textDecoration: "none", color: "white" }}
    >
      <div className='songListItem'>
        <Tooltip
          TransitionComponent={Zoom}
          placement="top"
          arrow
          title={new Date(song.created_at).toDateString()}
        >
          <ListItem style={{ textAlign: "center" }}>
            <ListItemText
              primary={song.title}
              secondary={
                <Typography style={{ color: "#e09026", fontSize: 12 }}>{`${
                  song.artist
                } | ${song.album} | ${song.length.slice(3, 8)}`}</Typography>
              }
            />
            <PlayCircleFilledIcon
              style={{
                position: "absolute",
                right: 20,
                color: "white",
                fontSize: 30,
              }}
            />
          </ListItem>
        </Tooltip>
      </div>
    </Link>
  );
}

export default SongListItem;
