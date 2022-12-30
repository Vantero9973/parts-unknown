import { useState } from "react";
import Pagination from "./Pagination";
import ForumSelector from "./ForumSelector";
import ForumSearch from "./ForumSearch";
// import { useQuery } from "@tanstack/react-query";
// import Axios from "axios";

export default function ForumCountry({ countries, setCountries, setSearch }) {
  const [currentPage, setCurrentPage] = useState(1);
  const [postsPerPage, setPostsPerPage] = useState(16);
  // const [countriesSort, setCountriesSort] = useState([]);

  // const { data: countries, isLoading } = useQuery(["country"], () => {
  //   return Axios.get("http://localhost:3000/countries").then((res) => res.data);
  // });

  const lastPostIndex = currentPage * postsPerPage;
  const firstPostIndex = lastPostIndex - postsPerPage;
  const currentPosts = countries.slice(firstPostIndex, lastPostIndex);

  function handleSort() {
    const sortedData = [...countries].sort((a, b) => {
      return a.name > b.name ? 1 : -1;
    });
    setCountries(sortedData);
  }

  function handleSortReverse() {
    const sortedData = [...countries].sort((a, b) => {
      return b.name > a.name ? 1 : -1;
    });
    setCountries(sortedData);
  }

  // if (isLoading) {
  //   return <h1>Loading...</h1>;
  // }

  return (
    <div style={{ padding: "2vw" }}>
      <div
        style={{
          display: "flex",
          flexDirection: "row",
          justifyContent: "center",
          alignItems: "center",
          gap: "2rem",
        }}
      >
        <ForumSearch setSearch={setSearch} />
        <div
          style={{
            display: "flex",
            alignItems: "flex-end",
            justifyContent: "center",
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
      <div style={{ marginTop: "5vh" }}>
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
