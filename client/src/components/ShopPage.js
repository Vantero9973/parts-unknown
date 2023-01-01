import { React, useState } from "react";
import { useNavigate } from "react-router-dom";
import { useQuery } from "@tanstack/react-query";
import Axios from "axios";
import ItemSearch from "./ItemSearch";
import { PacmanLoader } from "react-spinners";

export default function ShopPage() {
  const [search, setSearch] = useState("");
  const [sortedItems, setSortedItems] = useState([]);
  const navigate = useNavigate();

  const { data: items, isLoading: itemsLoading } = useQuery(["item"], () => {
    return Axios.get("http://localhost:3000/shop_items").then(
      (res) => res.data
    );
  });

  const { data: continents, isLoading: continentsLoading } = useQuery(
    ["continent"],
    () => {
      return Axios.get("http://localhost:3000/continents").then(
        (res) => res.data
      );
    }
  );

  const searchItems = items?.filter((country) =>
    country.name.toLowerCase().includes(search.toLowerCase())
  );

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

  if (itemsLoading || continentsLoading) {
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
        <div
          style={{ height: "2px", width: "90vw", background: "#3c3c3e" }}
        ></div>
        <div
          style={{
            display: "flex",
            justifyContent: "center",
            alignItems: "center",
            gap: "5rem",
          }}
        >
          {/* <div className="dropdown dropdown-hover">
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
          </div> */}
        </div>
        <div
          style={{
            width: "90vw",
            display: "flex",
            flexWrap: "wrap",
            justifyContent: "center",
            alignItems: "center",
          }}
        >
          {searchItems.map((item) => {
            console.log(item);
            return (
              <div
                style={{
                  height: "35vh",
                  width: "20vh",
                  display: "flex",
                  flexDirection: "column",
                  alignItems: "center",
                  justifyContent: "center",
                  marginLeft: "5px",
                  marginRight: "5px",
                  cursor: "pointer",
                }}
                onClick={() => navigate(`/shop/${item.id}`)}
              >
                <img
                  src={item.image}
                  alt=""
                  style={{ height: "25vh", width: "20vh" }}
                />
                <h1
                  style={{
                    color: "#dadada",
                    fontSize: "18px",
                    fontWeight: "bold",
                  }}
                >
                  {item.name}
                </h1>
                <h1
                  style={{
                    fontSize: "12px",
                    fontWeight: "bold",
                    color: "gray",
                  }}
                >
                  TRAVEL GUIDE
                </h1>
              </div>
            );
          })}
        </div>
      </div>
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
