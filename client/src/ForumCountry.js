import { useState } from "react";
import Pagination from "./Pagination";
import ForumSelector from "./ForumSelector";

export default function ForumCountry({ countries }) {
  const [currentPage, setCurrentPage] = useState(1);
  const [postsPerPage, setPostsPerPage] = useState(25);

  const lastPostIndex = currentPage * postsPerPage;
  const firstPostIndex = lastPostIndex - postsPerPage;
  const currentPosts = countries.slice(firstPostIndex, lastPostIndex);

  return (
    <div>
      <ForumSelector countries={currentPosts} />
      <Pagination
        totalPosts={countries.length}
        postsPerPage={postsPerPage}
        setCurrentPage={setCurrentPage}
        currentPage={currentPage}
      />
    </div>
  );
}
