import { useState, useEffect } from "react";
import Map from "./Map";
import Button from "@mui/material/Button";

export default function DestinationsPage() {
  const [countries, setCountries] = useState([]);

  useEffect(() => {
    fetch("http://localhost:3000/countries")
      .then((res) => res.json())
      .then((data) => {
        setCountries(data);
      });
  }, []);

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
          height: "92vh",
          width: "30vw",
          background: "#dadada",
          display: "flex",
          justifyContent: "center",
        }}
      >
        <div
          style={{
            display: "flex",
            flexWrap: "wrap",
            justifyContent: "center",
          }}
        >
          <div
            style={{
              background: "#2C2C2E",
              width: "28vw",
              height: "5vh",
              fontSize: "24px",
              textAlign: "center",
              margin: "20px",
              display: "flex",
              alignItems: "center",
              justifyContent: "center",
            }}
          >
            <h1>Country Name...</h1>
          </div>
          {countries.map((country) => {
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
                    margin: "5px",
                  }}
                >
                  <Button
                    variant="outlined"
                    style={{
                      background: "#2C2C2E",
                      borderColor: "#dadada",
                      color: "#dadada",
                      borderRadius: "10px",
                      display: "flex",
                      flexWrap: "wrap",
                    }}
                  >
                    {country.name}
                  </Button>
                </div>
              </div>
            );
          })}
        </div>
      </div>
      <Map />
    </div>
  );
}
