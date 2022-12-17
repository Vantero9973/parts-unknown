import "./App.css";
import { useState, useEffect } from "react";
import { Route, Routes } from "react-router-dom";
import NavBar from "./NavBar";
import LandingPage from "./LandingPage";
import DestinationsPage from "./DestinationsPage";
import BlogPage from "./BlogPage";
import ForumPage from "./ForumPage";
import PostPage from "./PostPage";
import ForumCountry from "./ForumCountry";

function App() {
  const [blogs, setBlogs] = useState([]);
  const [countries, setCountries] = useState([]);

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

  return (
    <>
      <NavBar />
      <div style={{ minHeight: "92vh", background: "#1C1C1E" }}>
        <Routes>
          <Route path="/" element={<LandingPage />} />
          <Route path="/destinations" element={<DestinationsPage />} />
          <Route path="/stories" element={<BlogPage blogs={blogs} />} />
          <Route
            path="/forum"
            element={<ForumCountry countries={countries} />}
          />
          <Route path="/forums/:id" element={<ForumPage />} />
          <Route path="/post/:id" element={<PostPage />} />
        </Routes>
      </div>
    </>
  );
}

export default App;
