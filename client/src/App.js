import "./App.css";
import { useState, useEffect } from "react";
import { Route, Routes } from "react-router-dom";
// import { useQuery } from "@tanstack/react-query";
// import Axios from "axios";
import NavBar from "./components/NavBar.js";
import LandingPage from "./components/LandingPage";
import DestinationsPage from "./components/DestinationsPage";
import BlogPage from "./components/BlogPage";
import ForumPage from "./components/ForumPage";
import PostPage from "./components/PostPage";
import ForumCountry from "./components/ForumCountry";
import FullBlogPost from "./components/FullBlogPost";
import { QueryClient, QueryClientProvider } from "@tanstack/react-query";

function App() {
  const [blogs, setBlogs] = useState([]);
  const [countries, setCountries] = useState([]);
  const [user, setUser] = useState(null);
  const [search, setSearch] = useState("");

  const client = new QueryClient();

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

  useEffect(() => {
    fetch("http://localhost:3000/me").then((r) => {
      if (r.ok) {
        r.json().then((user) => setUser(user));
      }
    });
  }, []);

  // const { data: blogs, isLoading: blogsLoading } = useQuery(["blogs"], () => {
  //   return Axios.get("http://localhost:3000/blogs").then((res) => res.data);
  // });

  // const { data: countries, isLoading: countriesLoading } = useQuery(
  //   ["countries"],
  //   () => {
  //     return Axios.get("http://localhost:3000/countries").then(
  //       (res) => res.data
  //     );
  //   }
  // );

  // if ((blogsLoading, countriesLoading)) {
  //   return <h1>Loading...</h1>;
  // }

  const searchStoriesByName = blogs.filter(
    (blog) =>
      blog.title.toLowerCase().includes(search.toLowerCase()) ||
      blog.description.toLowerCase().includes(search.toLowerCase())
  );

  const searchForumsByCountry = countries.filter((country) =>
    country.name.toLowerCase().includes(search.toLowerCase())
  );

  return (
    <QueryClientProvider client={client}>
      <NavBar user={user} setUser={setUser} />
      <div style={{ minHeight: "92vh", background: "#1C1C1E" }}>
        <Routes>
          <Route path="/" element={<LandingPage user={user} />} />
          <Route path="/destinations" element={<DestinationsPage />} />
          <Route
            path="/stories"
            element={
              <BlogPage
                blogs={searchStoriesByName}
                setBlogs={setBlogs}
                setSearch={setSearch}
              />
            }
          />
          <Route
            path="/forum"
            element={
              <ForumCountry
                countries={searchForumsByCountry}
                setCountries={setCountries}
                setSearch={setSearch}
              />
            }
          />
          <Route path="/forums/:id" element={<ForumPage />} />
          <Route path="/posts/:id" element={<PostPage />} />
          <Route path="/blogs/:id" element={<FullBlogPost />} />
        </Routes>
      </div>
    </QueryClientProvider>
  );
}

export default App;
