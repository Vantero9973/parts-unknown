import { useState, useEffect } from "react";
import { useNavigate } from "react-router-dom";
import QuizApp from "./QuizApp";
import BlogImages from "./BlogImages";
import SearchIcon from "@mui/icons-material/Search";

export default function LandingPage() {
  const [blogs, setBlogs] = useState([]);
  const navigate = useNavigate();

  useEffect(() => {
    fetch(`http://localhost:3000/blogs`)
      .then((res) => res.json())
      .then((data) => {
        setBlogs(data);
      });
  }, []);

  return (
    <div>
      <div>
        <BlogImages />
      </div>
      <div
        style={{ width: "100vw", display: "flex", justifyContent: "center" }}
      >
        <div
          style={{
            background: "#1C1C1E",
            padding: "5vh",
            width: "50vw",
          }}
        >
          <QuizApp />
        </div>
      </div>
    </div>
  );
}
