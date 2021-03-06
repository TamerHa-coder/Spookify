import React, { useState } from "react";
import {
  AppBar,
  Toolbar,
  IconButton,
  Typography,
  Drawer,
} from "@material-ui/core";
import { Menu } from "@material-ui/icons";
import AlbumIcon from "@material-ui/icons/Album";
import LibraryMusicIcon from "@material-ui/icons/LibraryMusic";
import HomeOutlinedIcon from "@material-ui/icons/HomeOutlined";
import PlaylistPlayOutlinedIcon from "@material-ui/icons/PlaylistPlayOutlined";
import MusicNoteOutlinedIcon from "@material-ui/icons/MusicNoteOutlined";
import SupervisorAccountIcon from "@material-ui/icons/SupervisorAccount";
import { Link } from "react-router-dom";
import image from "./pumkin.png";


function NavAppBar() {
  const [open, setOpen] = useState(false);

  const handleDrawer = () => {
    setOpen(true);
  };
  return (
    <div>
      <AppBar style={{ backgroundColor: "#e09026" }} position="static">
        <Toolbar>
          <IconButton
            onClick={handleDrawer}
            color="inherit"
            edge="start"
            aria-label="menu"
          >
            <Menu />
          </IconButton>
          <Link style={{ color: "white", textDecoration: "none" }} to="/">
            <Typography style={{ fontWeight: "bold" }} variant="h4">
              Spookify
            </Typography>
          </Link>
        </Toolbar>
      </AppBar>

      <Drawer
        anchor="left"
        open={open}
        onClose={() => {
          setOpen(false);
        }}
      >
        <div className="drawer">
          <Link style={{ textDecoration: "none" }} to="/">
            <div className="drawerItem">
              Home Page
              <HomeOutlinedIcon style={{ position: "absolute", right: 10 }} />
            </div>
          </Link>
          <Link style={{ textDecoration: "none" }} to="/songs">
            <div className="drawerItem">
              All Songs
              <MusicNoteOutlinedIcon
                style={{ position: "absolute", right: 10 }}
              />
            </div>
          </Link>
          <Link style={{ textDecoration: "none" }} to="/albums">
            <div className="drawerItem">
              All Albums
              <AlbumIcon style={{ position: "absolute", right: 10 }} />
            </div>
          </Link>
          <Link style={{ textDecoration: "none" }} to="/artists">
            <div className="drawerItem">
              All Artists
              <LibraryMusicIcon style={{ position: "absolute", right: 10 }} />
            </div>
          </Link>
          <Link style={{ textDecoration: "none" }} to="/playlists">
            <div className="drawerItem">
              All Playlists
              <PlaylistPlayOutlinedIcon
                style={{ position: "absolute", right: 10 }}
              />
            </div>
          </Link>
          <Link style={{ textDecoration: "none" }} to="/admin">
            <div className="drawerItem">
              Update
              <SupervisorAccountIcon
                style={{ position: "absolute", right: 10 }}
              />
            </div>
          </Link>
        </div>
        
      </Drawer>
      <img alt='404' src={image} style={{width:55, height:55, position: 'absolute', top: 3, right: 15}} />
    </div>
  );
}

export default NavAppBar;
