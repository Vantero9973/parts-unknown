import { useState, useEffect } from "react";
import { useParams, useNavigate } from "react-router-dom";

export default function ForumPage() {
  const [forums, setForums] = useState([]);
  const [posts, setPosts] = useState([]);
  const [postsLink, setPostsLink] = useState([]);
  const { id } = useParams();
  const navigate = useNavigate();

  useEffect(() => {
    fetch(`http://localhost:3000/forums/${id}`)
      .then((res) => res.json())
      .then((data) => {
        setForums(data);
      });
  }, [id]);

  useEffect(() => {
    fetch("http://localhost:3000/posts")
      .then((res) => res.json())
      .then((data) => {
        setPostsLink(data);
      });
  }, []);

  useEffect(() => {
    fetch(`http://localhost:3000/posts/${id}`)
      .then((res) => res.json())
      .then((data) => {
        setPosts(data);
      });
  }, [id]);

  return (
    <>
      <div>
        {forums.map((forum) => {
          return (
            <div
              style={{
                display: "flex",
                justifyContent: "center",
                alignItems: "center",
                gap: "3rem",
              }}
            >
              <h1
                style={{
                  fontSize: "48px",
                }}
              >
                {forum.country_name}
              </h1>
              <img
                src={forum.flag}
                alt="flag"
                style={{ maxHeight: "50px", maxWidth: "100px" }}
              />
            </div>
          );
        })}
      </div>
      <div
        style={{
          display: "flex",
          justifyContent: "center",
          alignItems: "center",
          flexDirection: "column",
          marginTop: "5vh",
        }}
      >
        <table
          style={{
            width: "50vw",
            display: "flex",
            flexDirection: "row",
            justifyContent: "center",
            alignItems: "center",
            margin: "10px",
          }}
        >
          <tr
            style={{
              display: "flex",
              alignItems: "center",
              fontSize: "16px",
              width: "20vw",
              height: "2vh",
            }}
          >
            Forum
          </tr>
          <tr
            style={{
              display: "flex",
              alignItems: "center",
              fontSize: "16px",
              width: "60vw",
            }}
          >
            Topic
          </tr>
          <tr
            style={{
              display: "flex",
              alignItems: "center",
              fontSize: "16px",
              width: "20vw",
            }}
          >
            Date
          </tr>
        </table>
        {posts.map((post) => {
          return (
            <table
              style={{
                display: "flex",
                flexDirection: "row",
                width: "50vw",
                background: "#dadada",
                color: "#2C2C2E",
                padding: "5px",
              }}
            >
              <tr
                style={{
                  display: "flex",
                  alignItems: "center",
                  fontSize: "16px",
                  width: "20vw",
                  height: "5vh",
                }}
              >
                {post.topic}
              </tr>
              <tr
                style={{
                  display: "flex",
                  alignItems: "center",
                  fontSize: "16px",
                  width: "60vw",
                }}
                onClick={() => navigate(`/posts/${post.id}`)}
              >
                {post.title}
              </tr>
              <tr
                style={{
                  display: "flex",
                  alignItems: "center",
                  fontSize: "16px",
                  width: "20vw",
                }}
              >
                {post.date}
              </tr>
            </table>
          );
        })}
      </div>
    </>
  );
}
