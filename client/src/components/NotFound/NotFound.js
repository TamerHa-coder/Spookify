import React from "react";
import image from "./404.png";
import NavAppBar from "../NavAppBar";

function NotFound() {
  return (
    <>
      <NavAppBar />
      <div
        background
        style={{
          textAlign: "center",
          color: "white",
          backgroundColor: "#111",
          height: "100vh",
        }}
      >
        <h1 style={{margin: 0 ,paddingTop: 30,paddingLeft: 0,paddingRight: 0,paddingBottom: 0}}> Ghosts have possessed our site <span role="img" aria-label="ghost">👻</span></h1>
        <p style={{ margin: 0, paddingTop: 10,paddingLeft: 0,paddingRight: 0,paddingBottom: 30, fontSize: 30, fontWeight: "bold"}}> Please try again later</p>
        <img alt='404' src={image} />
      </div>
    </>
  );
}

export default NotFound;
