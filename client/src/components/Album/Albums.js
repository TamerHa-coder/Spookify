import React, { useEffect, useState } from "react";
import NavAppBar from "../NavAppBar";
import axios from "axios";
import SquareAlbumListItem from "./SquareAlbumListItem";

function Albums() {
  const [albums, setAlbums] = useState([]);

  useEffect(() => {
    (async () => {
      const { data } = await axios.get("album");
      setAlbums(data);
    })();
  }, []);
  return (
    <>
      <NavAppBar />
      <h1 style={{ color: "white", textAlign: "center" }}>All Albums</h1>
      <div style={styles.gridContainer}>
        {albums.map((album) => (
          <SquareAlbumListItem key={album.album_id} album={album} />
        ))}
      </div>
    </>
  );
}

const styles = {
  gridContainer: {
    width: "80%",
    marginLeft: "4%",
    display: "grid",
    gridTemplateColumns: "1fr 1fr 1fr 1fr 1fr",
    gridGap: 30,
  },
};

export default Albums;
