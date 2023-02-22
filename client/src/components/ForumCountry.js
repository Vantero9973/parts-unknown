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

  return (
    <div className="forumCountryContainer">
      <div className="forumCountryDiv">
        <ForumSearch setSearch={setSearch} />
        <div className="forumCountrySecondaryDiv">
          <Dropdown
            title={
              <h1 className="forumCountryTitle" id="basic-nav-dropdown">
                SORT BY
              </h1>
            }
          >
            <Dropdown.Toggle
              id="dropdown-basic"
              className="forumCountryDropdownToggle"
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
      <div className="forumCountryMargin">
        <ForumSelector countries={currentPosts} />
      </div>
      <div className="forumCountryMargin">
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
