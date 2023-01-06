import { useState } from "react";
import { useNavigate } from "react-router-dom";
import { useQuery } from "@tanstack/react-query";
import Axios from "axios";
import Map from "./Map";
import InputLabel from "@mui/material/InputLabel";
import MenuItem from "@mui/material/MenuItem";
import FormControl from "@mui/material/FormControl";
import Select from "@mui/material/Select";

export default function DestinationsPage() {
  const [filteredContinent, setFilteredContinent] = useState([]);
  const [filteredCoordinates, setFilteredCoordinates] = useState({
    lat: "40",
    lng: "-100",
    zoom: 4,
  });
  const [continent, setContinent] = useState("");

  const navigate = useNavigate();

  const { data: countries, isLoading: countriesLoading } = useQuery(
    ["country"],
    () => {
      return Axios.get("/api/countries").then(
        (res) => res.data
      );
    }
  );

  const { data: continents, isLoading: continentsLoading } = useQuery(
    ["continent"],
    () => {
      return Axios.get("/api/continents").then(
        (res) => res.data
      );
    }
  );

  const handleChange = (e) => {
    setContinent(e.target.value);
  };

  const handleContinentClick = (continent) => {
    const filteredCountries = countries.filter(
      (country) => country.continent_id === continent.id
    );
    setFilteredContinent(filteredCountries);

    const filteredCoor = continents.find((c) => c.id === continent.id);
    setFilteredCoordinates(filteredCoor);
  };

  if (countriesLoading || continentsLoading) {
    return <h1>Loading...</h1>;
  }

  const lat = filteredCoordinates.lat;
  const lng = filteredCoordinates.lng;
  const zoom = filteredCoordinates.zoom;

  return (
    <div
      style={{
        display: "flex",
        flexWrap: "wrap",
        justifyContent: "center",
        alignItems: "center",
        height: "92vh",
        gap: "1vw",
      }}
    >
      <div
        style={{
          height: "88vh",
          width: "30vw",
          background: "#2c2c2e",
          display: "flex",
          justifyContent: "center",
          borderRadius: "20px",
        }}
      >
        <div
          style={{
            display: "flex",
            flexWrap: "wrap",
            justifyContent: "center",
          }}
        >
          <div>
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
          </div>
          <div
            class="overflow-scroll"
            style={{
              display: "flex",
              flexDirection: "column",
              justifyContent: "left",
              alignItems: "flex-start",
              width: "20vw",
              height: "78vh",
              background: "#2c2c2e",
              marginBottom: "2vh",
            }}
          >
            {filteredContinent.length > 0 &&
              filteredContinent.map((country) => {
                return (
                  <div
                    style={{
                      display: "flex",
                      justifyContent: "center",
                      alignItems: "center",
                    }}
                  >
                    <div
                      style={{
                        display: "flex",
                        flexWrap: "wrap",
                        height: "fit-content",
                        width: "fit-content",
                        margin: "3px",
                      }}
                    >
                      <li
                        className="countryList"
                        variant="outlined"
                        style={{
                          display: "flex",
                          color: "#dadada",
                          width: "15vw",
                          fontSize: "18px",
                          paddingLeft: "10px",
                          cursor: "pointer",
                        }}
                        onClick={() => navigate(`/countries/${country.id}`)}
                      >
                        {country.name}
                      </li>
                    </div>
                  </div>
                );
              })}
          </div>
        </div>
      </div>
      <Map lat={lat} lng={lng} zoom={zoom} />
    </div>
  );
}
