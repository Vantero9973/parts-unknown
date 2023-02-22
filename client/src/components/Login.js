import React, { useState } from "react";
import Button from "@mui/material/Button";

export default function Login({ setUser }) {
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");

  function handleSubmit(e) {
    e.preventDefault();
    fetch("/api/login", {
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
    <div className="loginContainer">
      <form onSubmit={handleSubmit} className="loginForm">
        <label htmlFor="username" className="loginLabel">
          Username
        </label>
        <input
          className="loginInput"
          type="text"
          id="username"
          autoComplete="off"
          value={username}
          onChange={(e) => setUsername(e.target.value)}
        />
        <label htmlFor="password" className="loginLabel">
          Password
        </label>
        <input
          className="loginInput"
          type="password"
          id="password"
          autoComplete="current-password"
          value={password}
          onChange={(e) => setPassword(e.target.value)}
        />
        <Button variant="outlined" type="submit" className="loginButton">
          Login
        </Button>
      </form>
    </div>
  );
}
