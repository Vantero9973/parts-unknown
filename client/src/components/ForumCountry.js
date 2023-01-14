import { useState } from "react";
import Pagination from "./Pagination";
import ForumSelector from "./ForumSelector";
import ForumSearch from "./ForumSearch";
import Dropdown from "react-bootstrap/Dropdown";

export default function ForumCountry({ countries, setCountries, setSearch }) {
  const [currentPage, setCurrentPage] = useState(1);
  const postsPerPage = 16;

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
              <Dropdown.Item onClick={handleSort}>A-Z</Dropdown.Item>
              <Dropdown.Item onClick={handleSortReverse}>Z-A</Dropdown.Item>
            </Dropdown.Menu>
          </Dropdown>
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
