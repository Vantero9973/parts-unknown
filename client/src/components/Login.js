import React, { useState } from "react";
import Popup from "reactjs-popup";
import Button from "@mui/material/Button";

export default function Login({ setUser }) {
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");

  function handleSubmit(e) {
    e.preventDefault();
    fetch("http://localhost:3000/login", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({ username, password }),
    }).then((r) => {
      if (r.ok) {
        r.json().then((user) => setUser(user));
      }
    });
  }

  return (
    <div
      style={{
        display: "flex",
        alignItems: "center",
        height: "50vh",
        width: "30vw",
        padding: "5vw",
        background: "#1C1C1E",
        borderRadius: "50px",
      }}
    >
      <form
        onSubmit={handleSubmit}
        style={{ display: "flex", flexDirection: "column" }}
      >
        <label htmlFor="username" style={{ fontSize: "24px" }}>
          Username
        </label>
        <input
          style={{
            width: "20vw",
            height: "3vh",
            fontSize: "20px",
            padding: "1vh",
          }}
          type="text"
          id="username"
          autoComplete="off"
          value={username}
          onChange={(e) => setUsername(e.target.value)}
        />
        <label htmlFor="password" style={{ fontSize: "24px" }}>
          Password
        </label>
        <input
          style={{
            width: "20vw",
            height: "3vh",
            fontSize: "20px",
            padding: "1vh",
          }}
          type="password"
          id="password"
          autoComplete="current-password"
          value={password}
          onChange={(e) => setPassword(e.target.value)}
        />
        <Button
          variant="outlined"
          type="submit"
          style={{
            fontSize: "16px",
            fontWeight: "bolder",
            color: "#1C1C1E",
            background: "#dadada",
            marginLeft: "5vw",
            marginTop: "3vh",
            width: "10vw",
          }}
        >
          Login
        </Button>
      </form>
    </div>
  );
}
