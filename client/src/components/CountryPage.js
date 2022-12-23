import { useParams } from "react-router-dom";
import { useQuery } from "@tanstack/react-query";
import Axios from "axios";
import Map from "./Map";
import Box from "@mui/material/Box";
import Card from "@mui/material/Card";
import CardContent from "@mui/material/CardContent";
import CardMedia from "@mui/material/CardMedia";
import Typography from "@mui/material/Typography";

export default function CountryPage() {
  const { id } = useParams();

  const { data: destinations, isLoading: destinationsLoading } = useQuery(
    ["destination"],
    () => {
      return Axios.get(`http://localhost:3000/destinations/${id}`).then(
        (res) => res.data
      );
    }
  );

  const { data: countries, isLoading: countriesLoading } = useQuery(
    ["country"],
    () => {
      return Axios.get(`http://localhost:3000/countries/${id}`).then(
        (res) => res.data
      );
    }
  );

  //   const { data: forums, isLoading: forumsLoading } = useQuery(["forum"], () => {
  //     return Axios.get(`http://localhost:3000/forums/${id}`).then(
  //       (res) => res.data
  //     );
  //   });

  if (destinationsLoading || countriesLoading) {
    return <h1>Loading...</h1>;
  }

  const lat = countries.lat;
  const lng = countries.lng;
  const zoom = countries.zoom;

  return (
    <div style={{ display: "flex", gap: "1rem", padding: "1vw" }}>
      <div
        class="overflow-scroll"
        style={{
          background: "#2c2c2e",
          width: "40vw",
          height: "88vh",
          padding: "1vh",
          borderRadius: "25px",
        }}
      >
        <div style={{ display: "flex", justifyContent: "center" }}>
          <h1
            style={{ fontSize: "32px", fontWeight: "bold", color: "#dadada" }}
          >
            {countries.name}
          </h1>
        </div>
        {destinations.map((destination) => {
          return (
            <Card
              sx={{
                display: "flex",
                alignItems: "center",
                margin: "10px",
                background: "#dadada",
                borderRadius: "25px",
              }}
            >
              <CardMedia
                component="img"
                sx={{
                  width: "8vw",
                  height: "8vw",
                  borderRadius: "25px",
                  padding: "10px",
                }}
                image={destination.image}
                alt=""
              />
              <Box sx={{ display: "flex", flexDirection: "column" }}>
                <CardContent sx={{ flex: "1 0 auto" }}>
                  <Typography
                    component="div"
                    variant="h5"
                    style={{
                      color: "#006699",
                      fontWeight: "bold",
                      cursor: "pointer",
                    }}
                  >
                    {destination.name}
                  </Typography>
                  <Typography
                    variant="subtitle1"
                    color="text.secondary"
                    component="div"
                  >
                    {destination.description}
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
                    do eiusmod tempor incididunt ut labore et dolore magna
                    aliqua. Ut enim ad minim veniam, quis nostrud exercitation.
                  </Typography>
                </CardContent>
              </Box>
            </Card>
          );
        })}
      </div>
      <Map lat={lat} lng={lng} zoom={zoom} />
    </div>
  );
}
