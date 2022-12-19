import { useState } from "react";
import BlogImages from "./BlogImages";
import Search from "./Search";
import BlogPosts from "./BlogPosts";
import Pagination from "./Pagination.js";

export default function BlogPage({ blogs, setSearch }) {
  const [currentPage, setCurrentPage] = useState(1);
  const [postsPerPage, setPostsPerPage] = useState(5);

  const lastPostIndex = currentPage * postsPerPage;
  const firstPostIndex = lastPostIndex - postsPerPage;
  const currentPosts = blogs.slice(firstPostIndex, lastPostIndex);

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
      <BlogImages />
      <div style={{ minHeight: "100vh" }}>
        <Search setSearch={setSearch} />
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
