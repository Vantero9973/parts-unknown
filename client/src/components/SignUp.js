import React, { useState } from "react";
import Button from "@mui/material/Button";
import defaultProfilePic from "../avatar_default.png";

export default function SignUp({ setUser }) {
  const [first_name, setFirstName] = useState("");
  const [last_name, setLastName] = useState("");
  const [image, setImage] = useState("");
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");
  const [passwordConfirmation, setPasswordConfirmation] = useState("");

  function handleSubmit(e) {
    e.preventDefault();
    fetch("http://localhost:3000/signup", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({
        username,
        first_name,
        last_name,
        image,
        password,
        password_confirmation: passwordConfirmation,
      }),
    }).then((r) => {
      if (r.ok) {
        r.json().then((user) => setUser(user));
      }
    });
  }

  //   t.string :username
  //   t.string :first_name
  //   t.string :last_name
  //   t.string :password
  //   t.string :password_digest
  //   t.string :image
  //   t.boolean :admin

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
        color: "#dadada",
      }}
    >
      <form
        onSubmit={handleSubmit}
        style={{ display: "flex", flexDirection: "column" }}
      >
        <label htmlFor="username" style={{ fontSize: "24px" }}>
          Username:
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
          value={username}
          onChange={(e) => setUsername(e.target.value)}
        />
        <label htmlFor="first_name" style={{ fontSize: "24px" }}>
          First Name:
        </label>
        <input
          style={{
            width: "20vw",
            height: "3vh",
            fontSize: "20px",
            padding: "1vh",
          }}
          type="text"
          id="first_name"
          value={first_name}
          onChange={(e) => setFirstName(e.target.value)}
        />
        <label htmlFor="last_name" style={{ fontSize: "24px" }}>
          Last Name:
        </label>
        <input
          style={{
            width: "20vw",
            height: "3vh",
            fontSize: "20px",
            padding: "1vh",
          }}
          type="text"
          id="last_name"
          value={last_name}
          onChange={(e) => setLastName(e.target.value)}
        />
        <label htmlFor="image" style={{ fontSize: "24px" }}>
          Profile Picture:
        </label>
        <input
          style={{
            width: "20vw",
            height: "3vh",
            fontSize: "20px",
            padding: "1vh",
          }}
          type="text"
          id="image"
          value={image}
          onChange={(e) => setImage(e.target.value)}
        />
        <label htmlFor="password" style={{ fontSize: "24px" }}>
          Password:
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
          value={password}
          onChange={(e) => setPassword(e.target.value)}
        />
        <label htmlFor="password_confirmation" style={{ fontSize: "24px" }}>
          Confirm Password:
        </label>
        <input
          style={{
            width: "20vw",
            height: "3vh",
            fontSize: "20px",
            padding: "1vh",
          }}
          type="password"
          id="password_confirmation"
          value={passwordConfirmation}
          onChange={(e) => setPasswordConfirmation(e.target.value)}
        />
        <Button
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
          Sign Up
        </Button>
      </form>
    </div>
  );
}
