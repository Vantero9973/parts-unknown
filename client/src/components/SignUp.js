import React, { useState } from "react";
import Button from "@mui/material/Button";

export default function SignUp({ setUser }) {
  const [first_name, setFirstName] = useState("");
  const [last_name, setLastName] = useState("");
  const [image, setImage] = useState("");
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");
  const [passwordConfirmation, setPasswordConfirmation] = useState("");

  function handleSubmit(e) {
    e.preventDefault();
    fetch("/api/signup", {
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

  return (
    <div className="signUpContainer">
      <form onSubmit={handleSubmit} className="signUpForm">
        <label htmlFor="username" className="signUpLabel">
          Username:
        </label>
        <input
          className="signUpInput"
          type="text"
          id="username"
          value={username}
          onChange={(e) => setUsername(e.target.value)}
        />
        <label htmlFor="first_name" className="signUpLabel">
          First Name:
        </label>
        <input
          className="signUpInput"
          type="text"
          id="first_name"
          value={first_name}
          onChange={(e) => setFirstName(e.target.value)}
        />
        <label htmlFor="last_name" className="signUpLabel">
          Last Name:
        </label>
        <input
          className="signUpInput"
          type="text"
          id="last_name"
          value={last_name}
          onChange={(e) => setLastName(e.target.value)}
        />
        <label htmlFor="image" className="signUpLabel">
          Profile Picture:
        </label>
        <input
          className="signUpInput"
          type="text"
          id="image"
          value={image}
          onChange={(e) => setImage(e.target.value)}
        />
        <label htmlFor="password" className="signUpLabel">
          Password:
        </label>
        <input
          className="signUpInput"
          type="password"
          id="password"
          value={password}
          onChange={(e) => setPassword(e.target.value)}
        />
        <label htmlFor="password_confirmation" className="signUpLabel">
          Confirm Password:
        </label>
        <input
          className="signUpInput"
          type="password"
          id="password_confirmation"
          value={passwordConfirmation}
          onChange={(e) => setPasswordConfirmation(e.target.value)}
        />
        <Button type="submit" className="signUpButton">
          Sign Up
        </Button>
      </form>
    </div>
  );
}
