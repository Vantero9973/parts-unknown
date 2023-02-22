import { useState, useEffect } from "react";
import { useParams } from "react-router-dom";
import Popup from "reactjs-popup";
import Button from "@mui/material/Button";
import moment from "moment";

export default function AddNewBlog({ user }) {
  const [title, setTitle] = useState("");
  const [body, setBody] = useState("");
  const [description, setDescription] = useState("");
  const [image, setImage] = useState("");
  const [category_one, setCategoryOne] = useState("");
  const [category_two, setCategoryTwo] = useState("");

  const today = moment();

  function handleSubmit(e) {
    e.preventDefault();
    const formData = {
      title: title,
      body: body,
      description: description,
      image: image,
      date: today.format("MMM D, YYYY"),
      likes: 0,
      read_time: "5 min read",
      category_one: category_one,
      category_two: category_two,
      username: `${user.first_name} ${user.last_name}`,
      profile_pic: `${user.image}`,
      user_id: parseInt(user.id),
    };
    fetch("/api/blogs", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(formData),
    }).then((r) => {
      if (r.ok) {
        r.json().then((newBlogs) => {
          handleAddBlog(newBlogs);
        });
      }
    });
  }

  const [{ data: blog, error, status }, setBlog] = useState({
    data: null,
    error: null,
    status: "pending",
  });
  const { id } = useParams();

  useEffect(() => {
    fetch(`/api/blogs/${id}`).then((r) => {
      if (r.ok) {
        r.json().then((blog) =>
          setBlog({ data: blog, error: null, status: "resolved" })
        );
      } else {
        r.json().then((err) =>
          setBlog({ data: null, error: err.error, status: "rejected" })
        );
      }
    });
  }, [id]);

  function handleAddBlog(newBlog) {
    setBlog({
      data: {
        ...blog,
        blogs: [...blog, newBlog],
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
      <div className="addNewBlogContainer">
        <Popup
          className="destinationsListBox"
          trigger={<Button className="addNewPopup">Add New Blog Post</Button>}
          modal
          nested
        >
          <div className="addNewBlogDiv">
            <div className="addNewBlogSecondaryDiv">
              <form className="addNewBlogForm" onSubmit={handleSubmit}>
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
                  id="addNewBlogTextArea"
                  type="text"
                  name="id"
                  placeholder="Body"
                  value={body}
                  onChange={(e) => setBody(e.target.value)}
                />
                <input
                  className="addNewBlogInput"
                  type="text"
                  name="description"
                  placeholder="Description"
                  value={description}
                  onChange={(e) => setDescription(e.target.value)}
                />
                <input
                  className="addNewBlogInput"
                  type="text"
                  name="image"
                  placeholder="Image URL"
                  value={image}
                  onChange={(e) => setImage(e.target.value)}
                />
                <input
                  className="addNewBlogInput"
                  type="text"
                  name="category_one"
                  placeholder="Category One"
                  value={category_one}
                  onChange={(e) => setCategoryOne(e.target.value)}
                />
                <input
                  className="addNewBlogInput"
                  type="text"
                  name="category_two"
                  placeholder="Category Two"
                  value={category_two}
                  onChange={(e) => setCategoryTwo(e.target.value)}
                />
                <Button
                  className="addNewBlogButton"
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
      <div className="addNewBlogContainer">
        <Button onClick={myAlert} className="addNewPopup">
          Add New Blog Post
        </Button>
      </div>
    );
  }
}
