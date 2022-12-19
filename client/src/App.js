import "./App.css";
import { useState, useEffect } from "react";
import { Route, Routes } from "react-router-dom";
import NavBar from "./components/NavBar.js";
import LandingPage from "./components/LandingPage";
import DestinationsPage from "./components/DestinationsPage";
import BlogPage from "./components/BlogPage";
import ForumPage from "./components/ForumPage";
import PostPage from "./components/PostPage";
import ForumCountry from "./components/ForumCountry";
import FullBlogPost from "./components/FullBlogPost";

function App() {
  const [blogs, setBlogs] = useState([]);
  const [countries, setCountries] = useState([]);
  const [search, setSearch] = useState("");
  // let { id } = useParams();

  useEffect(() => {
    fetch("http://localhost:3000/blogs")
      .then((res) => res.json())
      .then((data) => {
        setBlogs(data);
      });
  }, []);

  useEffect(() => {
    fetch("http://localhost:3000/countries")
      .then((res) => res.json())
      .then((data) => {
        setCountries(data);
      });
  }, []);

  const searchStoriesByName = blogs.filter(
    (blog) =>
      blog.title.toLowerCase().includes(search.toLowerCase()) ||
      blog.description.toLowerCase().includes(search.toLowerCase())
  );

  return (
    <>
      <NavBar />
      <div style={{ minHeight: "92vh", background: "#1C1C1E" }}>
        <Routes>
          <Route path="/" element={<LandingPage />} />
          <Route path="/destinations" element={<DestinationsPage />} />
          <Route
            path="/stories"
            element={
              <BlogPage blogs={searchStoriesByName} setSearch={setSearch} />
            }
          />
          <Route
            path="/forum"
            element={<ForumCountry countries={countries} />}
          />
          <Route path="/forums/:id" element={<ForumPage />} />
          <Route path="/posts/:id" element={<PostPage />} />
          <Route path="/blogs/:id" element={<FullBlogPost />} />
        </Routes>
      </div>
    </>
  );
}

export default App;
