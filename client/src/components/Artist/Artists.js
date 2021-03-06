import React, { useEffect, useState } from "react";
import NavAppBar from "../NavAppBar";
import axios from "axios";
import SquareArtistListItem from "./SquareArtistListItem";

function Artists() {
  const [artists, setArtists] = useState([]);

  useEffect(() => {
    (async () => {
      const { data } = await axios.get("artist");
      setArtists(data);
    })();
  }, []);
  return (
    <>
      <NavAppBar />
      <h1 style={{ color: "white", textAlign: "center" }}>All Artists</h1>
      <div style={styles.gridContainer}>
        {artists.map((artist) => (
          <SquareArtistListItem key={artist.artist_id} artist={artist} />
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

export default Artists;
