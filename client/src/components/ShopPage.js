import { useState } from "react";
import { useNavigate } from "react-router-dom";
import { useQuery } from "@tanstack/react-query";
import Axios from "axios";
import ItemSearch from "./ItemSearch";
import ShopItems from "./ShopItems";
import Pagination from "./Pagination.js";
import { PacmanLoader } from "react-spinners";

export default function ShopPage() {
  const [currentPage, setCurrentPage] = useState(1);
  const [postsPerPage, setPostsPerPage] = useState(21);
  const [search, setSearch] = useState("");
  // const [sortedItems, setSortedItems] = useState([]);
  const navigate = useNavigate();

  const { data: continents, isLoading: continentsLoading } = useQuery(
    ["continent"],
    () => {
      return Axios.get("http://localhost:3000/continents").then(
        (res) => res.data
      );
    }
  );

  const { data: items, isLoading: itemsLoading } = useQuery(["item"], () => {
    return Axios.get("http://localhost:3000/shop_items").then(
      (res) => res.data
    );
  });

  const lastPostIndex = currentPage * postsPerPage;
  const firstPostIndex = lastPostIndex - postsPerPage;
  const currentPosts = items?.slice(firstPostIndex, lastPostIndex);

  // function handleSort() {
  //   const sortedData = [...searchItems].sort((a, b) => {
  //     return a.name > b.name ? 1 : -1;
  //   });
  //   setSortedItems(sortedData);
  // }

  // function handleSortReverse() {
  //   const sortedData = [...searchItems].sort((a, b) => {
  //     return b.name > a.name ? 1 : -1;
  //   });
  //   setSortedItems(sortedData);
  // }

  if (continentsLoading) {
    return <h1>Loading...</h1>;
  }

  if (itemsLoading) {
    return (
      <div
        style={{
          height: "100vh",
          width: "100vw",
          display: "flex",
          justifyContent: "center",
          alignItems: "center",
        }}
      >
        <PacmanLoader color="yellow" size="50" />
      </div>
    );
  }

  return (
    <div style={{ padding: "5vh" }}>
      <ItemSearch setSearch={setSearch} />
      <div
        style={{
          display: "flex",
          alignItems: "center",
          justifyContent: "center",
          flexDirection: "column",
          padding: "4vh",
        }}
      >
        <div
          style={{
            width: "100vw",
            display: "flex",
            flexDirection: "column",
            justifyContent: "center",
            alignItems: "center",
          }}
        >
          {/* <h1 style={{ fontSize: "24px", fontWeight: "bold" }}>
            Browse by Continent
          </h1> */}
          <div
            style={{
              display: "flex",
              flexWrap: "wrap",
              justifyContent: "center",
              alignItems: "center",
              marginBottom: "5vh",
              width: "90vw",
            }}
          >
            {continents.map((continent) => {
              return (
                <div
                  onClick={() => navigate(`/continents/${continent.id}`)}
                  style={{
                    width: "12vw",
                    minWidth: "140px",
                    height: "12vw",
                    minHeight: "140px",
                    backgroundImage: `url(${continent.image})`,
                    backgroundSize: "cover",
                    backgroundRepeat: "no-repeat",
                    backgroundPosition: "center",
                    textShadow: "#000 1px 0 5px",
                    display: "flex",
                    justifyContent: "center",
                    alignItems: "center",
                    fontSize: "24px",
                    color: "white",
                    fontWeight: "bold",
                    margin: "1vw",
                    borderRadius: "5px",
                    cursor: "pointer",
                  }}
                >
                  <h1 style={{ width: "15vh", textAlign: "center" }}>
                    {continent.name}
                  </h1>
                </div>
              );
            })}
          </div>
        </div>
        <div style={{ height: "2px", width: "90vw", background: "#3c3c3e" }} />
        <ShopItems items={currentPosts} search={search} />
      </div>
      <Pagination
        totalPosts={items.length}
        postsPerPage={postsPerPage}
        setCurrentPage={setCurrentPage}
        currentPage={currentPage}
      />
    </div>
  );
}

// Other shop page layout

// import InputLabel from "@mui/material/InputLabel";
// import MenuItem from "@mui/material/MenuItem";
// import FormControl from "@mui/material/FormControl";
// import Select from "@mui/material/Select";
// const handleChange = (e) => {
//   setContinent(e.target.value);
// };

// const [filteredContinent, setFilteredContinent] = useState([]);
// const [continent, setContinent] = useState("");

// const handleContinentClick = (continent) => {
//   const filteredItems = items.filter(
//     (item) => item.continent_id === continent.id
//   );
//   setFilteredContinent(filteredItems);
// };

{
  /* <div>
        <FormControl
          variant="filled"
          sx={{
            m: 2,
            width: "28vw",
            background: "#dadada",
            borderRadius: "10px",
            color: "#1c1c1e",
          }}
        >
          <InputLabel
            id="demo-simple-select-filled-label"
            style={{ fontSize: "20px", color: "#1c1c1e" }}
          >
            Select Continent
          </InputLabel>
          <Select
            labelId="demo-simple-select-filled-label"
            id="demo-simple-select-filled"
            value={continent}
            onChange={handleChange}
          >
            {continents?.map((continent) => (
              <MenuItem
                value={continent.name}
                style={{
                  color: "#1c1c1e",
                }}
                onClick={() => handleContinentClick(continent)}
              >
                {continent.name}
              </MenuItem>
            ))}
          </Select>
        </FormControl>
      </div> */
}
