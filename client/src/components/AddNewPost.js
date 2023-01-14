import { useState, useEffect } from "react";
import { useParams } from "react-router-dom";
import Popup from "reactjs-popup";
import Button from "@mui/material/Button";
import moment from "moment";

export default function AddNewPost({ user }) {
  const [title, setTitle] = useState("");
  const [body, setBody] = useState("");
  const [topic, setTopic] = useState("");

  const today = moment();

  function handleSubmit(e) {
    e.preventDefault();
    const formData = {
      title: title,
      body: body,
      topic: topic,
      date: today.format("MMM D, YYYY"),
      likes: 0,
      username: `${user.username}`,
      profile_pic: `${user.image}`,
      user_id: parseInt(user.id),
      forum_id: parseInt(id),
    };
    fetch("/api/posts", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(formData),
    }).then((r) => {
      if (r.ok) {
        r.json().then((newPosts) => {
          handleAddPost(newPosts);
        });
      }
    });
  }

  const [{ data: post, error, status }, setPost] = useState({
    data: null,
    error: null,
    status: "pending",
  });
  const { id } = useParams();

  useEffect(() => {
    fetch(`/api/posts/${id}`).then((r) => {
      if (r.ok) {
        r.json().then((post) =>
          setPost({ data: post, error: null, status: "resolved" })
        );
      } else {
        r.json().then((err) =>
          setPost({ data: null, error: err.error, status: "rejected" })
        );
      }
    });
  }, [id]);

  function handleAddPost(newPost) {
    setPost({
      data: {
        ...post,
        posts: [...post, newPost],
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
          display: "flex",
          justifyContent: "center",
          alignItems: "center",
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
                fontWeight: "bold",
                background: "#2c2c2e",
                color: "#a6adba",
                borderColor: "#dadada",
                borderRadius: "5px",
              }}
            >
              Ask a Question
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
                  style={{
                    width: "40vw",
                    height: "5vh",
                    fontSize: "24px",
                    display: "flex",
                    marginBottom: "10px",
                    padding: "10px",
                  }}
                  type="text"
                  name="name"
                  placeholder="Title"
                  value={title}
                  onChange={(e) => setTitle(e.target.value)}
                />
                <textarea
                  class="overflow-scroll"
                  style={{
                    width: "40vw",
                    height: "40vh",
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
                <input
                  style={{
                    width: "40vw",
                    height: "5vh",
                    fontSize: "24px",
                    display: "flex",
                    marginBottom: "10px",
                    padding: "10px",
                  }}
                  type="text"
                  name="topic"
                  placeholder="Topic"
                  value={topic}
                  onChange={(e) => setTopic(e.target.value)}
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
          display: "flex",
          justifyContent: "center",
          alignItems: "center",
          gap: "45vw",
        }}
      >
        <Button
          onClick={myAlert}
          className="addNewPopup"
          style={{
            height: "44px",
            fontWeight: "bold",
            background: "#2c2c2e",
            color: "#a6adba",
            borderColor: "#dadada",
            borderRadius: "5px",
          }}
        >
          Ask a Question
        </Button>
      </div>
    );
  }
}
