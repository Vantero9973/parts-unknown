import { useState } from "react";
import Pagination from "./Pagination";
import ForumSelector from "./ForumSelector";
import ForumSearch from "./ForumSearch";

export default function ForumCountry({ countries, setSearch }) {
  const [currentPage, setCurrentPage] = useState(1);
  const [postsPerPage, setPostsPerPage] = useState(25);

  const lastPostIndex = currentPage * postsPerPage;
  const firstPostIndex = lastPostIndex - postsPerPage;
  const currentPosts = countries.slice(firstPostIndex, lastPostIndex);

  return (
    <div style={{ padding: "2vw", minHeight: "93vh" }}>
      <div>
        <ForumSearch setSearch={setSearch} />
        <ForumSelector countries={currentPosts} />
      </div>
      <div style={{ marginTop: "5vh" }}>
        <Pagination
          totalPosts={countries.length}
          postsPerPage={postsPerPage}
          setCurrentPage={setCurrentPage}
          currentPage={currentPage}
        />
      </div>
    </div>
  );
}
