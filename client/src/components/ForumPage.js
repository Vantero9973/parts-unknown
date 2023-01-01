import { useQuery } from "@tanstack/react-query";
import Axios from "axios";
import { useParams, useNavigate } from "react-router-dom";
import { Vortex } from "react-loader-spinner";

export default function ForumPage() {
  const { id } = useParams();
  const navigate = useNavigate();

  const { data: forums, isLoading: forumsLoading } = useQuery(["forum"], () => {
    return Axios.get(`http://localhost:3000/forums/${id}`).then(
      (res) => res.data
    );
  });

  const { data: posts, isLoading: postsLoading } = useQuery(["post"], () => {
    return Axios.get(`http://localhost:3000/posts/${id}`).then(
      (res) => res.data
    );
  });

  // const { data: postsLink, isLoading: postsLinkLoading } = useQuery(
  //   ["postLink"],
  //   () => {
  //     return Axios.get("http://localhost:3000/posts").then((res) => res.data);
  //   }
  // );

  if (forumsLoading || postsLoading) {
    return (
      <div
        style={{
          height: "100vh",
          width: "100vw",
          display: "flex",
          justifyContent: "center",
          alignItems: "center",
        }}
      >
        <h1 style={{ fontSize: "24px" }}>Loading...</h1>
      </div>
    );
  }

  return (
    <>
      <div style={{ marginTop: "5vh" }}>
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
              padding: "5px",
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
                  fontWeight: "bold",
                  width: "20vw",
                  height: "5vh",
                  padding: "5px",
                }}
              >
                {post.topic}
              </tr>
              <tr
                style={{
                  display: "flex",
                  alignItems: "center",
                  fontSize: "16px",
                  fontWeight: "bold",
                  width: "60vw",
                  cursor: "pointer",
                  color: "#006699",
                }}
                onClick={() => navigate(`/posts/${post.id}`)}
              >
                {post.title}
              </tr>
              <tr
                style={{
                  display: "flex",
                  alignItems: "center",
                  fontSize: "14px",
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
