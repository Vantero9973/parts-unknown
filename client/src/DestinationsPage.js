import { useState, useEffect } from "react";
import Map from "./Map";

export default function DestinationsPage() {
  const [countries, setCountries] = useState([]);

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
          background: "#dadada",
          display: "flex",
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
          Country Name...
        </div>
      </div>
      <Map />
    </div>
  );
}
