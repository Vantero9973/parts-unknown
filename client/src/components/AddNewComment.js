import { useState, useEffect } from "react";
import { useParams } from "react-router-dom";
import Popup from "reactjs-popup";
import Button from "@mui/material/Button";
import moment from "moment";

export default function AddNewComment({ user }) {
  const [comments, setComments] = useState([]);
  const [body, setBody] = useState("");
  const [formErrors, setFormErrors] = useState([]);

  const today = moment();

  useEffect(() => {
    fetch("/api/forum_comments")
      .then((r) => r.json())
      .then(setComments);
  }, []);

  function handleSubmit(e) {
    e.preventDefault();
    const formData = {
      body: body,
      date: today.format("MMM D, YYYY, h:mm a"),
      likes: 0,
      username: `${user.username}`,
      profile_pic: `${user.image}`,
      user_id: parseInt(user.id),
      post_id: parseInt(id),
    };
    fetch("/api/forum_comments", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(formData),
    }).then((r) => {
      if (r.ok) {
        r.json().then((newComments) => {
          handleAddComment(newComments);
          setFormErrors([]);
        });
      } else {
        r.json().then((err) => setFormErrors(err.errors));
      }
    });
  }

  const [{ data: comment, error, status }, setComment] = useState({
    data: null,
    error: null,
    status: "pending",
  });
  const { id } = useParams();

  useEffect(() => {
    fetch(`/api/forum_comments/${id}`).then((r) => {
      if (r.ok) {
        r.json().then((comment) =>
          setComment({ data: comment, error: null, status: "resolved" })
        );
      } else {
        r.json().then((err) =>
          setComment({ data: null, error: err.error, status: "rejected" })
        );
      }
    });
  }, [id]);

  function handleAddComment(newComment) {
    setComment({
      data: {
        ...comment,
        comments: [...comment, newComment],
      },
      error: null,
      status: "resolved",
    });
    window.location.reload(true);
  }

  function myAlert() {
    alert("Please log in");
  }

  if (status === "pending") return <h1>Loading...</h1>;
  if (status === "rejected") return <h1>Error: {error.error}</h1>;

  if (user) {
    return (
      <div
        style={{
          gap: "45vw",
        }}
      >
        <Popup
          style={{
            display: "flex",
            alignItems: "center",
            justifyContent: "center",
          }}
          trigger={
            <Button
              className="addNewPopup"
              style={{
                height: "44px",
                background: "#1c1c1e",
                color: "#006699",
                borderColor: "#dadada",
                borderRadius: "5px",
                fontSize: "16px",
              }}
            >
              Reply
            </Button>
          }
          modal
          nested
        >
          <div
            style={{
              background: "#1C1C1E",
              display: "flex",
              width: "50vw",
              height: "80vh",
              borderRadius: "50px",
              border: "1px solid #dadada",
            }}
          >
            <div
              style={{
                display: "flex",
                flexDirection: "column",
                justifyContent: "center",
                alignItems: "center",
                gap: "10px",
                marginTop: "2vh",
              }}
            >
              <form onSubmit={handleSubmit} style={{ marginLeft: "5vw" }}>
                <input
                  class="overflow-scroll"
                  style={{
                    width: "40vw",
                    height: "20vh",
                    fontSize: "24px",
                    display: "flex",
                    alignItems: "flex-start",
                    justifyContent: "flex-start",
                    flexWrap: "wrap",
                    marginBottom: "10px",
                    padding: "10px",
                  }}
                  type="text"
                  name="id"
                  placeholder="Body"
                  value={body}
                  onChange={(e) => setBody(e.target.value)}
                />
                <Button
                  variant="outlined"
                  type="submit"
                  style={{
                    fontSize: "16px",
                    fontWeight: "bolder",
                    color: "#1C1C1E",
                    background: "#dadada",
                    marginLeft: "15vw",
                    marginTop: "2vh",
                    width: "10vw",
                  }}
                >
                  Post
                </Button>
              </form>
            </div>
          </div>
        </Popup>
      </div>
    );
  } else {
    return (
      <div
        style={{
          gap: "45vw",
        }}
      >
        <Button
          onClick={myAlert}
          className="addNewPopup"
          style={{
            height: "44px",
            background: "#1c1c1e",
            color: "#006699",
            borderColor: "#dadada",
            borderRadius: "5px",
            fontSize: "16px",
          }}
        >
          Reply
        </Button>
      </div>
    );
  }
}
