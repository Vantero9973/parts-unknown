import { useState } from "react";
import LandingPageImages from "./LandingPageImages";
import Search from "./Search";
import BlogPosts from "./BlogPosts";
import Pagination from "./Pagination.js";
import AddNewBlog from "./AddNewBlog";

export default function BlogPage({ blogs, setBlogs, setSearch, user }) {
  const [currentPage, setCurrentPage] = useState(1);
  const [postsPerPage, setPostsPerPage] = useState(5);

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

  if (user) {
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
              <div className="dropdown dropdown-hover">
                <label
                  tabIndex={0}
                  className="btn m-1"
                  style={{ background: "#2C2C2E", display: "flex", gap: "1vh" }}
                >
                  Sort By <div>▼</div>
                </label>
                <ul
                  tabIndex={0}
                  className="dropdown-content menu p-2 shadow bg-base-100 rounded-box w-52"
                  style={{ background: "#2C2C2E" }}
                >
                  <li onClick={handleSortByLikes}>
                    <a>Most Popular</a>
                  </li>
                  <li onClick={handleSort}>
                    <a>A-Z</a>
                  </li>
                  <li onClick={handleSortReverse}>
                    <a>Z-A</a>
                  </li>
                </ul>
              </div>
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
  } else {
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
              <Search setSearch={setSearch} />
              <div className="dropdown dropdown-hover">
                <label
                  tabIndex={0}
                  className="btn m-1"
                  style={{ background: "#2C2C2E", display: "flex", gap: "1vh" }}
                >
                  Sort By <div>▼</div>
                </label>
                <ul
                  tabIndex={0}
                  className="dropdown-content menu p-2 shadow bg-base-100 rounded-box w-52"
                  style={{ background: "#2C2C2E" }}
                >
                  <li onClick={handleSortByLikes}>
                    <a>Most Popular</a>
                  </li>
                  <li onClick={handleSort}>
                    <a>A-Z</a>
                  </li>
                  <li onClick={handleSortReverse}>
                    <a>Z-A</a>
                  </li>
                </ul>
              </div>
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
}
