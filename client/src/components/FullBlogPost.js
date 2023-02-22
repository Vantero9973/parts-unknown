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
    return Axios.get(`/api/blogs/${id}`).then((res) => res.data);
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
      <div className="fullBlogPostContainer">
        {blogs.map((blog) => {
          console.log(blog);
          console.log(user);
          if (user.id === blog.user_id) {
            return (
              <div className="fullBlogPostSecondaryContainer">
                <div className="fullBlogPostTitleContainer">
                  <h1 className="fullBlogPostTitle">{blog.title}</h1>
                  <div className="fullBlogPostDiv">
                    <img
                      src={blog.profile_pic}
                      alt=""
                      className="fullBlogPostImage"
                    />
                    <div className="fullBlogPostUsernameContainer">
                      <h1 className="fullBlogPostUsername">{blog.username}</h1>
                      <hr class="solid" id="fullBlogPostHr"></hr>
                      <h1 className="fullBlogPostDateRead">
                        {blog.date} • {blog.read_time}
                      </h1>
                    </div>
                  </div>
                </div>
                <div className="fullBlogPostSecondaryDiv">
                  <img
                    src={blog.image}
                    alt=""
                    className="fullBlogPostSecondaryImage"
                  />
                </div>
                <div className="fullBlogPostBodyContainer">
                  <p className="fullBlogPostP">{blog.body}</p>
                </div>
                <Button
                  variant="outlined"
                  onClick={() => handleDelete(blog.id)}
                  className="fullBlogPostButton"
                >
                  Delete <DeleteIcon className="deleteIcon" />
                </Button>
              </div>
            );
          } else {
            return (
              <div className="fullBlogPostSecondaryContainer">
                <div className="fullBlogPostTitleContainer">
                  <h1 className="fullBlogPostSecondaryTitle">{blog.title}</h1>
                  <div className="fullBlogPostDiv">
                    <img
                      src={blog.profile_pic}
                      alt=""
                      className="fullBlogPostImage"
                    />
                    <div className="fullBlogPostUsernameContainer">
                      <h1 className="fullBlogPostUsername">{blog.username}</h1>
                      <hr class="solid" id="fullBlogPostHr"></hr>
                      <h1 className="fullBlogPostDateRead">
                        {blog.date} • {blog.read_time}
                      </h1>
                    </div>
                  </div>
                </div>
                <div className="fullBlogPostSecondaryDiv">
                  <img
                    src={blog.image}
                    alt=""
                    className="fullBlogPostSecondaryImage"
                  />
                </div>
                <div className="fullBlogPostPContainer">
                  <p className="fullBlogPostSecondaryP">{blog.body}</p>
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
            <div className="fullBlogPostSecondaryContainer">
              <div className="fullBlogPostTitleContainer">
                <h1 className="fullBlogPostTitle">{blog.title}</h1>
                <div className="fullBlogPostDiv">
                  <img
                    src={blog.profile_pic}
                    alt=""
                    className="fullBlogPostProfilePic"
                  />
                  <div className="fullBlogPostUsernameContainer">
                    <h1 className="fullBlogPostUsername">{blog.username}</h1>
                    <hr class="solid" id="fullBlogPostHr"></hr>
                    <h1 className="fullBlogPostDateRead">
                      {blog.date} • {blog.read_time}
                    </h1>
                  </div>
                </div>
              </div>
              <div className="fullBlogPostSecondaryDiv">
                <img
                  src={blog.image}
                  alt=""
                  className="fullBlogPostSecondaryImage"
                />
              </div>
              <div className="fullBlogPostPContainer">
                <p className="fullBlogPostSecondaryP">{blog.body}</p>
              </div>
            </div>
          );
        })}
      </div>
    );
}
