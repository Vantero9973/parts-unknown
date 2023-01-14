import React, { useState, useEffect } from "react";
import { useParams, useNavigate } from "react-router-dom";
import { useQuery } from "@tanstack/react-query";
import Axios from "axios";
import Button from "@mui/material/Button";
import DeleteIcon from "@mui/icons-material/Delete";

export default function FullBlogPost({ user }) {
  const [deleteBlogs, setDeleteBlogs] = useState();
  const { id } = useParams();
  const navigate = useNavigate();

  const { data: blogs, isLoading: blogsLoading } = useQuery(["blog"], () => {
    return Axios.get(`/api/blogs/${id}`).then(
      (res) => res.data
    );
  });

  useEffect(() => {
    fetch(`/api/blogs/${id}`)
      .then((res) => res.json())
      .then((data) => {
        setDeleteBlogs(data);
      });
  }, [id]);

  function handleDelete(id) {
    fetch(`/api/blogs/${id}`, {
      method: "DELETE",
    }).then((r) => {
      if (r.ok) {
        setDeleteBlogs((deleteBlogs) =>
          deleteBlogs.filter((deleteBlog) => deleteBlog.id !== id)
        );
      }
    });
    navigate("/stories");
    window.location.reload(true);
  }

  if (blogsLoading) {
    return <h1>Loading...</h1>;
  }

  if (user) {
    return (
      <div style={{ color: "#dadada" }}>
        {blogs.map((blog) => {
          console.log(blog);
          console.log(user);
          if (user.id === blog.user_id) {
            return (
              <div
                style={{
                  display: "flex",
                  flexDirection: "column",
                  alignItems: "center",
                  justifyContent: "center",
                  marginTop: "10vh",
                  color: "#dadada",
                }}
              >
                <div
                  style={{
                    display: "flex",
                    alignItems: "center",
                    flexDirection: "row",
                    gap: "20vw",
                    paddingLeft: "12vw",
                    paddingRight: "12vw",
                  }}
                >
                  <h1
                    style={{
                      fontSize: "36px",
                      fontWeight: "bold",
                    }}
                  >
                    {blog.title}
                  </h1>
                  <div
                    style={{
                      display: "flex",
                      alignItems: "center",
                      justifyContent: "space-between",
                      flexDirection: "row",
                      gap: "1vw",
                    }}
                  >
                    <img
                      src={blog.profile_pic}
                      alt=""
                      style={{
                        height: "50px",
                        width: "50px",
                        borderRadius: "50%",
                      }}
                    />
                    <div
                      style={{
                        display: "flex",
                        flexDirection: "column",
                      }}
                    >
                      <h1
                        style={{
                          fontSize: "20px",
                          fontWeight: "bold",
                          minWidth: "10vw",
                        }}
                      >
                        {blog.username}
                      </h1>
                      <hr class="solid" style={{ margin: "2px" }}></hr>
                      <h1
                        style={{
                          fontSize: "16px",
                          lineHeight: "100%",
                          marginTop: "5px",
                        }}
                      >
                        {blog.date} • {blog.read_time}
                      </h1>
                    </div>
                  </div>
                </div>
                <div
                  style={{
                    display: "flex",
                    flexDirection: "column",
                    justifyContent: "center",
                    alignItems: "center",
                  }}
                >
                  <img
                    src={blog.image}
                    alt=""
                    style={{
                      maxHeight: "90vh",
                      maxWidth: "75vw",
                      margin: "5vh",
                    }}
                  />
                </div>
                <div
                  style={{
                    paddingLeft: "20vw",
                    paddingRight: "20vw",
                    fontSize: "20px",
                    width: "100vw",
                  }}
                >
                  <p style={{ whiteSpace: "pre-line", wordWrap: "break-word" }}>
                    {blog.body}
                  </p>
                </div>
                <Button
                  variant="outlined"
                  onClick={() => handleDelete(blog.id)}
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
                </Button>
              </div>
            );
          } else {
            return (
              <div
                style={{
                  display: "flex",
                  flexDirection: "column",
                  alignItems: "center",
                  justifyContent: "center",
                  marginTop: "10vh",
                  color: "#dadada",
                }}
              >
                <div
                  style={{
                    display: "flex",
                    alignItems: "center",
                    flexDirection: "row",
                    gap: "20vw",
                    paddingLeft: "12vw",
                    paddingRight: "12vw",
                  }}
                >
                  <h1
                    style={{
                      fontSize: "36px",
                      fontWeight: "bold",
                      color: "#dadada",
                    }}
                  >
                    {blog.title}
                  </h1>
                  <div
                    style={{
                      display: "flex",
                      alignItems: "center",
                      justifyContent: "space-between",
                      flexDirection: "row",
                      gap: "1vw",
                    }}
                  >
                    <img
                      src={blog.profile_pic}
                      alt=""
                      style={{
                        height: "50px",
                        width: "50px",
                        borderRadius: "50%",
                      }}
                    />
                    <div
                      style={{
                        display: "flex",
                        flexDirection: "column",
                      }}
                    >
                      <h1
                        style={{
                          fontSize: "20px",
                          fontWeight: "bold",
                          minWidth: "10vw",
                        }}
                      >
                        {blog.username}
                      </h1>
                      <hr class="solid" style={{ margin: "2px" }}></hr>
                      <h1
                        style={{
                          fontSize: "16px",
                          lineHeight: "100%",
                          marginTop: "5px",
                        }}
                      >
                        {blog.date} • {blog.read_time}
                      </h1>
                    </div>
                  </div>
                </div>
                <div
                  style={{
                    display: "flex",
                    flexDirection: "column",
                    justifyContent: "center",
                    alignItems: "center",
                  }}
                >
                  <img
                    src={blog.image}
                    alt=""
                    style={{
                      maxHeight: "90vh",
                      maxWidth: "75vw",
                      margin: "5vh",
                    }}
                  />
                </div>
                <div
                  style={{
                    paddingLeft: "20vw",
                    paddingRight: "20vw",
                    fontSize: "20px",
                  }}
                >
                  <p
                    style={{
                      margin: "5vh",
                      whiteSpace: "pre-line",
                      wordWrap: "break-word",
                    }}
                  >
                    {blog.body}
                  </p>
                </div>
              </div>
            );
          }
        })}
      </div>
    );
  } else
    return (
      <div>
        {blogs.map((blog) => {
          return (
            <div
              style={{
                display: "flex",
                flexDirection: "column",
                alignItems: "center",
                justifyContent: "center",
                marginTop: "10vh",
                color: "#dadada",
              }}
            >
              <div
                style={{
                  display: "flex",
                  alignItems: "center",
                  flexDirection: "row",
                  gap: "20vw",
                  paddingLeft: "12vw",
                  paddingRight: "12vw",
                }}
              >
                <h1 style={{ fontSize: "36px", fontWeight: "bold" }}>
                  {blog.title}
                </h1>
                <div
                  style={{
                    display: "flex",
                    alignItems: "center",
                    justifyContent: "space-between",
                    flexDirection: "row",
                    gap: "1vw",
                  }}
                >
                  <img
                    src={blog.profile_pic}
                    alt=""
                    style={{
                      height: "50px",
                      width: "50px",
                      borderRadius: "50%",
                      display: "flex",
                      alignItems: "center",
                    }}
                  />
                  <div
                    style={{
                      display: "flex",
                      flexDirection: "column",
                    }}
                  >
                    <h1
                      style={{
                        fontSize: "20px",
                        fontWeight: "bold",
                        minWidth: "10vw",
                      }}
                    >
                      {blog.username}
                    </h1>
                    <hr class="solid" style={{ margin: "2px" }}></hr>
                    <h1
                      style={{
                        fontSize: "16px",
                        lineHeight: "100%",
                        marginTop: "5px",
                      }}
                    >
                      {blog.date} • {blog.read_time}
                    </h1>
                  </div>
                </div>
              </div>
              <div
                style={{
                  display: "flex",
                  flexDirection: "column",
                  justifyContent: "center",
                  alignItems: "center",
                }}
              >
                <img
                  src={blog.image}
                  alt=""
                  style={{
                    maxHeight: "90vh",
                    maxWidth: "75vw",
                    margin: "5vh",
                  }}
                />
              </div>
              <div
                style={{
                  paddingLeft: "20vw",
                  paddingRight: "20vw",
                  fontSize: "20px",
                }}
              >
                <p
                  style={{
                    margin: "5vh",
                    whiteSpace: "pre-line",
                    wordWrap: "break-word",
                  }}
                >
                  {blog.body}
                </p>
              </div>
            </div>
          );
        })}
      </div>
    );
}
