import { useQuery } from "@tanstack/react-query";
import Axios from "axios";
import { useState } from "react";
import { useNavigate, useParams } from "react-router-dom";
import default_avatar from "../avatar_default.png";
import AddNewComment from "./AddNewComment";
import Button from "@mui/material/Button";
import DeleteIcon from "@mui/icons-material/Delete";

export default function PostPage({ user }) {
  const [deleteComments, setDeleteComments] = useState();
  const { id } = useParams();
  const navigate = useNavigate();

  const { data: posts, isLoading: postsLoading } = useQuery(["post"], () => {
    return Axios.get(`/api/postpage/${id}`).then(
      (res) => res.data
    );
  });

  const { data: comments, isLoading: commentsLoading } = useQuery(
    ["comment"],
    () => {
      return Axios.get(`/api/forum_comments/${id}`).then(
        (res) => res.data
      );
    }
  );

  function handleDelete(id) {
    fetch(`/api/forum_comments/${id}`, {
      method: "DELETE",
    }).then((r) => {
      if (r.ok) {
        setDeleteComments((deleteComments) =>
          deleteComments.filter((deleteComment) => deleteComment.id !== id)
        );
      }
    });
    navigate(`/posts/${id}`);
    window.location.reload(true);
  }

  if (postsLoading || commentsLoading) {
    return <h1>Loading...</h1>;
  }

  console.log(posts);

  if (user) {
    return (
      <div
        style={{
          display: "flex",
          flexDirection: "column",
          alignItems: "center",
          width: "100vw",
          minHeight: "92vh",
          padding: "10vh",
          color: "#dadada",
        }}
      >
        {posts.map((post) => {
          return (
            <div
              style={{
                display: "flex",
                justifyContent: "center",
                alignItems: "center",
                width: "75vw",
                background: "#1c1c1e",
                padding: "5vh",
                gap: "5rem",
                // marginTop: "10vh",
              }}
            >
              <div
                style={{
                  display: "flex",
                  flexDirection: "column",
                  alignItems: "center",
                  justifyContent: "center",
                  width: "10vw",
                  height: "10vw",
                }}
              >
                <img
                  src={post.profile_pic}
                  alt=""
                  style={{
                    height: "10vw",
                    maxWidth: "10vw",
                    borderRadius: "50%",
                  }}
                />
                <p>{post.username}</p>
              </div>
              <div
                style={{
                  display: "flex",
                  flexDirection: "column",
                  justifyContent: "center",
                }}
              >
                <h1
                  style={{
                    fontSize: "24px",
                    fontWeight: "bold",
                    color: "#dadada",
                  }}
                >
                  {post.title}
                </h1>
                <p style={{ fontSize: "14px", color: "gray" }}>{post.date}</p>
                <p style={{ marginTop: "2vh", whiteSpace: "pre-line" }}>
                  {post.body}
                </p>
                <AddNewComment user={user} />
              </div>
            </div>
          );
        })}
        {/* <hr style={{ height: "10px" }}></hr> */}
        <div
          style={{
            display: "flex",
            flexDirection: "column",
            alignItems: "center",
            // padding: "5vh",
          }}
        >
          {comments.map((comment) => {
            return (
              <div
                style={{
                  display: "flex",
                  alignItems: "center",
                  background: "#1c1c1e",
                  width: "75vw",
                  borderTop: "1px solid #4c4c4e",
                }}
              >
                <div
                  style={{
                    padding: "5vh",
                    display: "flex",
                    flexDirection: "column",
                    alignItems: "center",
                    justifyContent: "center",
                    textAlign: "center",
                  }}
                >
                  <img
                    src={comment.profile_pic}
                    alt=""
                    style={{
                      height: "5vw",
                      maxWidth: "5vw",
                      borderRadius: "50%",
                    }}
                  />
                  <h1 style={{ fontSize: "16px" }}>{comment.username}</h1>
                </div>
                <div>
                  <div
                    style={{
                      padding: "5vh",
                      display: "flex",
                      flexDirection: "column",
                      gap: "1vw",
                    }}
                  >
                    <p style={{ fontSize: "14px", color: "gray" }}>
                      {comment.date}
                    </p>
                    <p style={{ whiteSpace: "pre-line" }}>{comment.body}</p>
                    {/* <Button
                      variant="outlined"
                      onClick={() => handleDelete(comment.id)}
                      style={{
                        background: "#dc2626",
                        color: "#1c1c1e",
                        borderColor: "#1c1c1e",
                        borderRadius: "10px",
                        fontWeight: "bold",
                        fontSize: "20px",
                        marginBottom: "5vh",
                        display: "flex",
                        alignItems: "center",
                        justifyContent: "center",
                        gap: "1vh",
                      }}
                    >
                      Delete <DeleteIcon style={{ marginBottom: "2px" }} />
                    </Button> */}
                  </div>
                </div>
              </div>
            );
          })}
        </div>
      </div>
    );
  } else {
    return (
      <div
        style={{
          display: "flex",
          flexDirection: "column",
          alignItems: "center",
          width: "100vw",
          minHeight: "92vh",
          padding: "10vh",
          color: "#dadada",
        }}
      >
        {posts.map((post) => {
          return (
            <div
              style={{
                display: "flex",
                justifyContent: "center",
                alignItems: "center",
                width: "75vw",
                background: "#1c1c1e",
                padding: "5vh",
                gap: "5rem",
                // marginTop: "10vh",
              }}
            >
              <div
                style={{
                  display: "flex",
                  flexDirection: "column",
                  alignItems: "center",
                  justifyContent: "center",
                  width: "10vw",
                  height: "10vw",
                }}
              >
                <img
                  src={post.profile_pic}
                  alt=""
                  style={{
                    height: "10vw",
                    maxWidth: "10vw",
                    borderRadius: "50%",
                  }}
                />
                <p>{post.username}</p>
              </div>
              <div
                style={{
                  display: "flex",
                  flexDirection: "column",
                  justifyContent: "center",
                }}
              >
                <h1
                  style={{
                    fontSize: "24px",
                    fontWeight: "bold",
                    color: "#dadada",
                  }}
                >
                  {post.title}
                </h1>
                <p style={{ fontSize: "14px", color: "gray" }}>{post.date}</p>
                <p style={{ marginTop: "2vh", whiteSpace: "pre-line" }}>
                  {post.body}
                </p>
                <AddNewComment user={user} />
              </div>
            </div>
          );
        })}
        {/* <hr style={{ height: "10px" }}></hr> */}
        <div
          style={{
            display: "flex",
            flexDirection: "column",
            alignItems: "center",
            // padding: "5vh",
          }}
        >
          {comments.map((comment) => {
            return (
              <div
                style={{
                  display: "flex",
                  alignItems: "center",
                  background: "#1c1c1e",
                  width: "75vw",
                  borderTop: "1px solid #4c4c4e",
                }}
              >
                <div
                  style={{
                    padding: "5vh",
                    display: "flex",
                    flexDirection: "column",
                    alignItems: "center",
                    justifyContent: "center",
                    textAlign: "center",
                  }}
                >
                  <img
                    src={comment.profile_pic}
                    alt=""
                    style={{
                      height: "5vw",
                      maxWidth: "5vw",
                      borderRadius: "50%",
                    }}
                  />
                  <h1 style={{ fontSize: "16px" }}>{comment.username}</h1>
                </div>
                <div>
                  <div
                    style={{
                      padding: "5vh",
                      display: "flex",
                      flexDirection: "column",
                      gap: "1vw",
                    }}
                  >
                    <p style={{ fontSize: "14px", color: "gray" }}>
                      {comment.date}
                    </p>
                    <p style={{ whiteSpace: "pre-line" }}>{comment.body}</p>
                  </div>
                </div>
              </div>
            );
          })}
        </div>
      </div>
    );
  }
}
