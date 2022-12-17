import { useState } from "react";
import BlogImages from "./BlogImages";
import Search from "./Search";
import BlogPosts from "./BlogPosts";
import Pagination from "./Pagination";

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
            width: "45vw",
            zIndex: "1",
            fontSize: "70px",
            fontWeight: "bold",
            color: "white",
            textAlign: "center",
            textShadow: "#000 2px 0 3px",
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
