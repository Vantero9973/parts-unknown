import { useState, useEffect } from "react";
import { useParams } from "react-router-dom";
import default_avatar from "../avatar_default.png";

export default function FullBlogPost() {
  const [blogs, setBlogs] = useState();
  const [users, setUsers] = useState();

  const { id } = useParams();

  useEffect(() => {
    fetch(`http://localhost:3000/blogs/${id}`)
      .then((res) => res.json())
      .then((data) => {
        setBlogs(data);
      });
  }, [id]);

  useEffect(() => {
    fetch(`http://localhost:3000/users/`)
      .then((res) => res.json())
      .then((data) => {
        setUsers(data);
      });
  }, []);

  if (!blogs) return <h2>Loading...</h2>;

  const userdude = (
    <div>
      {users.map((user) => {
        return (
          <h1 style={{ fontSize: "20px", fontWeight: "bold" }}>
            {user.first_name} {user.last_name}
          </h1>
        );
      })}
    </div>
  );

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
            }}
          >
            <div
              style={{
                display: "flex",
                alignItems: "center",
                flexDirection: "row",
                gap: "15vw",
              }}
            >
              <h1 style={{ fontSize: "36px", fontWeight: "bold" }}>
                {blog.title}
              </h1>
              <div
                style={{
                  display: "flex",
                  alignItems: "center",
                  flexDirection: "row",
                  gap: "1vh",
                }}
              >
                <img
                  src={default_avatar}
                  alt=""
                  style={{ height: "50px", width: "50px" }}
                />
                <div style={{ display: "flex", flexDirection: "column" }}>
                  <h1>{userdude}</h1>
                  <hr class="solid"></hr>
                  <h1 style={{ fontSize: "16px" }}>
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
                style={{ maxHeight: "90vh", maxWidth: "75vw", margin: "5vh" }}
              />
            </div>
            <div
              style={{
                paddingLeft: "20vw",
                paddingRight: "20vw",
                fontSize: "20px",
              }}
            >
              <p style={{ margin: "5vh" }}>{blog.body}</p>
            </div>
          </div>
        );
      })}
    </div>
  );
}
