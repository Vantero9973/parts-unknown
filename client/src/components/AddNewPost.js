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
      <div className="addNewPostContainer">
        <Popup
          className="destinationsListBox"
          trigger={<Button className="addNewPostButton">Ask a Question</Button>}
          modal
          nested
        >
          <div className="addNewPostDiv">
            <div className="addNewPostSecondaryDiv">
              <form className="addNewPostForm" onSubmit={handleSubmit}>
                <input
                  className="addNewBlogInput"
                  type="text"
                  name="name"
                  placeholder="Title"
                  value={title}
                  onChange={(e) => setTitle(e.target.value)}
                />
                <textarea
                  class="overflow-scroll"
                  id="addNewPostTextArea"
                  type="text"
                  name="id"
                  placeholder="Body"
                  value={body}
                  onChange={(e) => setBody(e.target.value)}
                />
                <input
                  className="addNewBlogInput"
                  type="text"
                  name="topic"
                  placeholder="Topic"
                  value={topic}
                  onChange={(e) => setTopic(e.target.value)}
                />
                <Button
                  variant="outlined"
                  type="submit"
                  className="addNewPostSecondaryButton"
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
      <div className="addNewPostContainer">
        <Button onClick={myAlert} className="addNewPostButton">
          Ask a Question
        </Button>
      </div>
    );
  }
}
