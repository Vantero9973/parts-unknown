import { useState, useEffect } from "react";
import { useParams, useNavigate } from "react-router-dom";
import Popup from "reactjs-popup";
import Button from "@mui/material/Button";
import moment from "moment";

export default function AddNewBlog({ user }) {
  const [blogs, setBlogs] = useState([]);
  const [title, setTitle] = useState("");
  const [body, setBody] = useState("");
  const [description, setDescription] = useState("");
  const [image, setImage] = useState("");
  const [read_time, setReadTime] = useState("");
  const [category_one, setCategoryOne] = useState("");
  const [category_two, setCategoryTwo] = useState("");
  const [formErrors, setFormErrors] = useState([]);
  const navigate = useNavigate();

  console.log(user);
  // function getCurrentDate(separator = "") {
  //   let newDate = new Date();
  //   let date = newDate.getDate();
  //   let month = newDate.getMonth() + 1;
  //   let year = newDate.getFullYear();

  //   return `${year}${separator}${
  //     month < 10 ? `0${month}` : `${month}`
  //   }${separator}${date}`;
  // }

  const today = moment();

  useEffect(() => {
    fetch("/api/blogs")
      .then((r) => r.json())
      .then(setBlogs);
  }, []);

  function handleSubmit(e) {
    e.preventDefault();
    const formData = {
      title: title,
      body: body,
      description: description,
      image: image,
      date: today.format("MMM D, YYYY"),
      likes: 0,
      read_time: read_time,
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
          setFormErrors([]);
        });
      } else {
        r.json().then((err) => setFormErrors(err.errors));
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
      <div
        style={{
          display: "flex",
          justifyContent: "center",
          alignItems: "center",
          gap: "45vw",
        }}
      >
        <Popup
          style={{
            display: "flex",
            alignItems: "center",
            justifyContent: "center",
          }}
          trigger={
            <Button
              className="addNewPopup"
              style={{
                height: "44px",
                fontWeight: "bold",
                background: "#2c2c2e",
                color: "#a6adba",
                borderColor: "#dadada",
                borderRadius: "5px",
              }}
            >
              Add New Blog Post
            </Button>
          }
          modal
          nested
        >
          <div
            style={{
              background: "#1C1C1E",
              display: "flex",
              width: "50vw",
              height: "80vh",
              borderRadius: "50px",
              border: "1px solid #dadada",
            }}
          >
            <div
              style={{
                display: "flex",
                flexDirection: "column",
                justifyContent: "center",
                alignItems: "center",
                gap: "10px",
                marginTop: "2vh",
              }}
            >
              <form onSubmit={handleSubmit} style={{ marginLeft: "5vw" }}>
                <input
                  style={{
                    width: "40vw",
                    height: "5vh",
                    fontSize: "24px",
                    display: "flex",
                    marginBottom: "10px",
                    padding: "10px",
                  }}
                  type="text"
                  name="name"
                  placeholder="Title"
                  value={title}
                  onChange={(e) => setTitle(e.target.value)}
                />
                <input
                  style={{
                    width: "40vw",
                    height: "5vh",
                    fontSize: "24px",
                    display: "flex",
                    marginBottom: "10px",
                    padding: "10px",
                  }}
                  type="text"
                  name="id"
                  placeholder="Body"
                  value={body}
                  onChange={(e) => setBody(e.target.value)}
                />
                <input
                  style={{
                    width: "40vw",
                    height: "5vh",
                    fontSize: "24px",
                    display: "flex",
                    marginBottom: "10px",
                    padding: "10px",
                  }}
                  type="text"
                  name="description"
                  placeholder="Description"
                  value={description}
                  onChange={(e) => setDescription(e.target.value)}
                />
                <input
                  style={{
                    width: "40vw",
                    height: "5vh",
                    fontSize: "24px",
                    display: "flex",
                    marginBottom: "10px",
                    padding: "10px",
                  }}
                  type="text"
                  name="image"
                  placeholder="Image URL"
                  value={image}
                  onChange={(e) => setImage(e.target.value)}
                />
                <input
                  style={{
                    width: "40vw",
                    height: "5vh",
                    fontSize: "24px",
                    display: "flex",
                    marginBottom: "10px",
                    padding: "10px",
                  }}
                  type="text"
                  name="read_time"
                  placeholder="Read Time"
                  value={read_time}
                  onChange={(e) => setReadTime(e.target.value)}
                />
                <input
                  style={{
                    width: "40vw",
                    height: "5vh",
                    fontSize: "24px",
                    display: "flex",
                    marginBottom: "10px",
                    padding: "10px",
                  }}
                  type="text"
                  name="category_one"
                  placeholder="Category One"
                  value={category_one}
                  onChange={(e) => setCategoryOne(e.target.value)}
                />
                <input
                  style={{
                    width: "40vw",
                    height: "5vh",
                    fontSize: "24px",
                    display: "flex",
                    marginBottom: "10px",
                    padding: "10px",
                  }}
                  type="text"
                  name="category_two"
                  placeholder="Category Two"
                  value={category_two}
                  onChange={(e) => setCategoryTwo(e.target.value)}
                />
                <Button
                  variant="outlined"
                  type="submit"
                  style={{
                    fontSize: "16px",
                    fontWeight: "bolder",
                    color: "#1C1C1E",
                    background: "#dadada",
                    marginLeft: "15vw",
                    marginTop: "2vh",
                    width: "10vw",
                  }}
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
      <div
        style={{
          display: "flex",
          justifyContent: "center",
          alignItems: "center",
          gap: "45vw",
        }}
      >
        <Button
          onClick={myAlert}
          className="addNewPopup"
          style={{
            height: "44px",
            fontWeight: "bold",
            background: "#2c2c2e",
            color: "#a6adba",
            borderColor: "#dadada",
            borderRadius: "5px",
          }}
        >
          Add New Blog Post
        </Button>
      </div>
    );
  }
}
