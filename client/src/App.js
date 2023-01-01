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
import CountryPage from "./components/CountryPage";
import ShopPage from "./components/ShopPage";
import ContinentsShopPage from "./components/ContinentsShopPage";
import ShopItemCard from "./components/ShopItemCard";
import { QueryClient, QueryClientProvider } from "@tanstack/react-query";
import Payment from "./components/Payment";
import Completion from "./components/Completion";
// import { useQuery } from "@tanstack/react-query";
// import Axios from "axios";

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

  // const { data, isLoading } = useQuery(["country"], () => {
  //   return Axios.get("http://localhost:3000/countries").then((res) => res.data);
  // });

  // function getBlogs() {
  //   return Axios.get("http://localhost:3000/blogs").then((res) => res.data);
  // }

  // const { data, isLoading: blogsLoading } = useQuery(["blogs"], () => getBlogs());

  const searchStoriesByName = blogs.filter(
    (blog) =>
      blog.title.toLowerCase().includes(search.toLowerCase()) ||
      blog.description.toLowerCase().includes(search.toLowerCase())
  );

  const searchForumsByCountry = countries.filter((country) =>
    country.name.toLowerCase().includes(search.toLowerCase())
  );

  // if (isLoading) {
  //   return <h1>Loading...</h1>;
  // }

  return (
    <QueryClientProvider client={client}>
      <div style={{ minHeight: "100vh", background: "#1C1C1E" }}>
        <NavBar user={user} setUser={setUser} />
        <Routes>
          <Route path="/" element={<LandingPage />} />
          <Route path="/destinations" element={<DestinationsPage />} />
          <Route
            path="/stories"
            element={
              <BlogPage
                blogs={searchStoriesByName}
                setBlogs={setBlogs}
                setSearch={setSearch}
                user={user}
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
          <Route path="/shop" element={<ShopPage />} />
          <Route path="/countries/:id" element={<CountryPage />} />
          <Route path="/forums/:id" element={<ForumPage />} />
          <Route path="/posts/:id" element={<PostPage />} />
          <Route path="/blogs/:id" element={<FullBlogPost user={user} />} />
          <Route path="/continents/:id" element={<ContinentsShopPage />} />
          <Route path="/shop/:id" element={<ShopItemCard />} />
          <Route path="/payment" element={<Payment />} />
          <Route path="/completion" element={<Completion />} />
        </Routes>
      </div>
    </QueryClientProvider>
  );
}

export default App;
