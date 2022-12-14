import "./App.css";
import { useState, useEffect } from "react";
import { Route, Routes } from "react-router-dom";
import NavBar from "./NavBar";
import LandingPage from "./LandingPage";
import DestinationsPage from "./DestinationsPage";
import BlogPage from "./BlogPage";
import ForumPage from "./ForumPage";

function App() {
  const [blogs, setBlogs] = useState([]);

  useEffect(() => {
    fetch("http://localhost:3000/blogs")
      .then((res) => res.json())
      .then((data) => {
        setBlogs(data);
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
          <Route path="/forum" element={<ForumPage />} />
        </Routes>
      </div>
    </>
  );
}

export default App;
