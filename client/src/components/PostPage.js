import { useQuery } from "@tanstack/react-query";
import Axios from "axios";
import { useParams } from "react-router-dom";
import default_avatar from "../avatar_default.png";

export default function PostPage() {
  const { id } = useParams();

  const { data: posts, isLoading: postsLoading } = useQuery(["post"], () => {
    return Axios.get(`http://localhost:3000/postpage/${id}`).then(
      (res) => res.data
    );
  });

  const { data: comments, isLoading: commentsLoading } = useQuery(
    ["comment"],
    () => {
      return Axios.get(`http://localhost:3000/forum_comments/${id}`).then(
        (res) => res.data
      );
    }
  );

  if (postsLoading || commentsLoading) {
    return <h1>Loading...</h1>;
  }

  return (
    <div
      style={{
        display: "flex",
        flexDirection: "column",
        alignItems: "center",
        width: "100vw",
        minHeight: "92vh",
      }}
    >
      {posts.map((post) => {
        return (
          <div
            style={{
              display: "flex",
              justifyContent: "center",
              alignItems: "center",
              width: "50vw",
              background: "#2c2c2e",
              padding: "5vh",
              gap: "5rem",
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
                src={default_avatar}
                alt=""
                style={{ height: "10vw", maxWidth: "10vw" }}
              />
              <p>Alex Van Vleet</p>
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
              <p style={{ marginTop: "2vh" }}>{post.body}</p>
            </div>
          </div>
        );
      })}
      <hr style={{ height: "10px" }}></hr>
      <div
        style={{
          display: "flex",
          flexDirection: "column",
          width: "50vw",
          background: "#2c2c2e",
          padding: "5vh",
        }}
      >
        {comments.map((comment) => {
          return (
            <div
              style={{
                display: "flex",
                alignItems: "center",
              }}
            >
              <div
                style={{
                  padding: "5vh",
                  display: "flex",
                  flexDirection: "column",
                }}
              >
                <img
                  src={default_avatar}
                  alt=""
                  style={{ height: "5vw", maxWidth: "5vw" }}
                />
                <p>{comment.date}</p>
              </div>
              <div>
                <p>{comment.body}</p>
              </div>
            </div>
          );
        })}
      </div>
    </div>
  );
}
