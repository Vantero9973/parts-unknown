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
      <div className="blogPageContainer">
        <h5 className="blogPageTitle">Discover story-worthy travel moments</h5>
      </div>
      <LandingPageImages />
      <div className="blogPageDiv">
        <div className="blogPageSecondaryDiv">
          <div className="blogPageDropdownContainer">
            <Dropdown
              title={
                <h1 className="blogPageDropdown" id="basic-nav-dropdown">
                  SORT BY
                </h1>
              }
            >
              <Dropdown.Toggle
                id="dropdown-basic"
                className="blogPageDropdownToggle"
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
