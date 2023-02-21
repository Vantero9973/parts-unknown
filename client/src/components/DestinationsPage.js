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
  const [continent, setContinent] = useState("");
  const [filteredCountries, setFilteredCountries] = useState([]);
  const [filteredCoordinates, setFilteredCoordinates] = useState({
    lat: 40,
    lng: -100,
    zoom: 4,
  });

  const navigate = useNavigate();

  const { data: countries, isLoading: countriesLoading } = useQuery(
    ["country"],
    () => {
      return Axios.get("/api/countries").then((res) => res.data);
    }
  );

  const { data: continents, isLoading: continentsLoading } = useQuery(
    ["continent"],
    () => {
      return Axios.get("/api/continents").then((res) => res.data);
    }
  );

  const handleContinentClick = (continent) => {
    const filteredCountryList = countries.filter(
      (country) => country.continent_id === continent.id
    );
    setFilteredCountries(filteredCountryList);

    const filteredCoor = continents.find((c) => c.id === continent.id);
    setFilteredCoordinates(filteredCoor);
  };

  const handleChange = (e) => {
    setContinent(e.target.value);
  };

  const lat = filteredCoordinates.lat;
  const lng = filteredCoordinates.lng;
  const zoom = filteredCoordinates.zoom;

  if (countriesLoading || continentsLoading) {
    return <h1>Loading...</h1>;
  }

  return (
    <div className="destinationsPageContainer">
      <div className="destinationsListContainer">
        <div className="destinationsListSecondaryContainer">
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
                className="destinationsInputLabel"
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
                    className="destinationsMenuItem"
                    key={continent.id}
                    value={continent.name}
                    onClick={() => handleContinentClick(continent)}
                  >
                    {continent.name}
                  </MenuItem>
                ))}
              </Select>
            </FormControl>
          </div>
          <div className="overflow-scroll" id="destinationsCountryBox">
            {filteredCountries.length > 0 &&
              filteredCountries.map((country) => {
                return (
                  <div key={country.id} className="destinationsListBox">
                    <div className="destinationsSecondaryListBox">
                      <li
                        className="countryList"
                        variant="outlined"
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
