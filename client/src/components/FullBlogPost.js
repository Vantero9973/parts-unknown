import { useState, useEffect } from "react";
import { useParams } from "react-router-dom";

export default function FullBlogPost() {
  const [blogs, setBlogs] = useState();

  const { id } = useParams();

  useEffect(() => {
    fetch(`http://localhost:3000/blogs/${id}`)
      .then((res) => res.json())
      .then((data) => {
        setBlogs(data);
      });
  }, [id]);

  if (!blogs) return <h2>Loading...</h2>;

  return (
    <div>
      {blogs.map((blog) => {
        return (
          <div
            style={{
              paddingLeft: "15vw",
              paddingRight: "15vw",
              marginTop: "10vh",
            }}
          >
            <h1 style={{ fontSize: "36px", fontWeight: "bold" }}>
              {blog.title}
            </h1>
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
                style={{ maxHeight: "80vh", maxWidth: "80vw" }}
              />
            </div>
            <div
              style={{
                paddingLeft: "5vw",
                paddingRight: "5vw",
                marginTop: "10vh",
                fontSize: "20px",
              }}
            >
              <p>{blog.body}</p>
            </div>
          </div>
        );
      })}
    </div>
  );
}
