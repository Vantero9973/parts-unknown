import { useState } from "react";
import LandingPageImages from "./LandingPageImages";
import Search from "./Search";
import BlogPosts from "./BlogPosts";
import Pagination from "./Pagination.js";
import AddNewBlog from "./AddNewBlog";
import Dropdown from "react-bootstrap/Dropdown";

export default function BlogPage({ blogs, setBlogs, setSearch, user }) {
  const [currentPage, setCurrentPage] = useState(1);
  const postsPerPage = 5;

  const lastPostIndex = currentPage * postsPerPage;
  const firstPostIndex = lastPostIndex - postsPerPage;
  const currentPosts = blogs.slice(firstPostIndex, lastPostIndex);

  function handleSortByLikes() {
    const sortedData = [...blogs].sort((a, b) => {
      return b.likes > a.likes ? 1 : -1;
    });
    setBlogs(sortedData);
  }

  function handleSort() {
    const sortedData = [...blogs].sort((a, b) => {
      return a.title > b.title ? 1 : -1;
    });
    setBlogs(sortedData);
  }

  function handleSortReverse() {
    const sortedData = [...blogs].sort((a, b) => {
      return b.title > a.title ? 1 : -1;
    });
    setBlogs(sortedData);
  }

  return (
    <>
      <div
        style={{
          position: "absolute",
          height: "80vh",
          width: "100vw",
          display: "flex",
          justifyContent: "center",
          alignItems: "center",
        }}
      >
        <h5
          style={{
            width: "55vw",
            zIndex: "1",
            fontSize: "75px",
            fontWeight: "bold",
            color: "white",
            textAlign: "center",
            textShadow: "#000 2px 0 3px",
            lineHeight: "90%",
          }}
        >
          Discover story-worthy travel moments
        </h5>
      </div>
      <LandingPageImages />
      <div
        style={{
          minHeight: "100vh",
          paddingBottom: "5vh",
        }}
      >
        <div
          style={{
            display: "flex",
            flexDirection: "row",
            justifyContent: "center",
            alignItems: "center",
            gap: "2rem",
            marginTop: "10vh",
          }}
        >
          <div
            style={{
              display: "flex",
              alignItems: "center",
              justifyContent: "center",
              gap: "1rem",
            }}
          >
            <Dropdown
              title={
                <h1
                  style={{
                    display: "flex",
                    justifyContent: "center",
                    alignItems: "center",
                    fontSize: "16px",
                    fontWeight: "bold",
                    color: "#dadada",
                    background: "#2c2c2e",
                    padding: "10px",
                  }}
                  id="basic-nav-dropdown"
                >
                  SORT BY
                </h1>
              }
            >
              <Dropdown.Toggle
                id="dropdown-basic"
                style={{
                  background: "#2c2c2e",
                  border: "none",
                  fontWeight: "bold",
                  color: "#dadada",
                }}
              >
                SORT BY
              </Dropdown.Toggle>
              <Dropdown.Menu>
                <Dropdown.Item onClick={handleSortByLikes}>
                  Most Popular
                </Dropdown.Item>
                <Dropdown.Item onClick={handleSort}>A-Z</Dropdown.Item>
                <Dropdown.Item onClick={handleSortReverse}>Z-A</Dropdown.Item>
              </Dropdown.Menu>
            </Dropdown>
            <Search setSearch={setSearch} />
            <AddNewBlog user={user} />
          </div>
        </div>
        <BlogPosts blogs={currentPosts} />
        <Pagination
          totalPosts={blogs.length}
          postsPerPage={postsPerPage}
          setCurrentPage={setCurrentPage}
          currentPage={currentPage}
        />
      </div>
    </>
  );
}
