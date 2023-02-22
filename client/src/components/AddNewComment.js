import { useState, useEffect } from "react";
import { useParams } from "react-router-dom";
import Popup from "reactjs-popup";
import Button from "@mui/material/Button";
import moment from "moment";

export default function AddNewComment({ user }) {
  const [body, setBody] = useState("");

  const today = moment();

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
        });
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
      <div className="addNewCommentContainer">
        <Popup
          className="destinationsListBox"
          trigger={<Button className="addNewCommentButton">Reply</Button>}
          modal
          nested
        >
          <div className="addNewCommentDiv">
            <div className="addNewCommentSecondaryDiv">
              <form className="addNewCommentForm" onSubmit={handleSubmit}>
                <textarea
                  class="overflow-scroll"
                  id="addNewCommentTextArea"
                  type="text"
                  name="id"
                  placeholder="Body"
                  value={body}
                  onChange={(e) => setBody(e.target.value)}
                />
                <Button
                  className="addNewCommentSecondaryButton"
                  variant="outlined"
                  type="submit"
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
      <div className="addNewCommentContainer">
        <Button onClick={myAlert} className="addNewCommentButton">
          Reply
        </Button>
      </div>
    );
  }
}
