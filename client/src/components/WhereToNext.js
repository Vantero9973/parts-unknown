import Card from "@mui/material/Card";
import CardMedia from "@mui/material/CardMedia";
import Button from "@mui/material/Button";
import { useNavigate } from "react-router-dom";
import { useQuery } from "@tanstack/react-query";
import Axios from "axios";

export default function WhereToNext() {
  const navigate = useNavigate();

  const { data: destinations, isLoading } = useQuery(["destination"], () => {
    return Axios.get(`http://localhost:3000/destinations`).then(
      (res) => res.data
    );
  });

  if (isLoading) {
    return <h1>Loading...</h1>;
  }

  return (
    <div
      style={{
        height: "100vh",
        width: "100vw",
        paddingLeft: "8vw",
        paddingRight: "8vw",
        paddingTop: "5vw",
        background: "lightgray",
      }}
    >
      <div style={{ display: "flex", justifyContent: "space-between" }}>
        <div style={{ marginLeft: "1vw" }}>
          <h1 style={{ fontWeight: "bold", color: "gray" }}>PLAN YOUR TRIP</h1>
          <h1
            style={{
              fontSize: "50px",
              fontWeight: "bold",
              color: "#1c1c1e",
            }}
          >
            Where to next?
          </h1>
        </div>
        <div
          style={{
            display: "flex",
            alignItems: "flex-end",
            marginBottom: "2vh",
            marginRight: "2vw",
          }}
        >
          <Button
            variant="outlined"
            onClick={() => navigate("/destinations")}
            style={{
              height: "fit-content",
              background: "#dadada",
              color: "#1c1c1e",
              borderColor: "#1c1c1e",
              borderRadius: "20px",
              fontWeight: "bold",
            }}
          >
            View all destinations
          </Button>
        </div>
      </div>
      <div
        style={{
          display: "flex",
          flexWrap: "wrap",
          justifyContent: "space-between",
          alignItems: "center",
          marginTop: "10vh",
        }}
      >
        {destinations.map((destination) => {
          return (
            <div
              style={{
                display: "flex",
                flexDirection: "column",
                justifyContent: "center",
                alignItems: "center",
                margin: "1vh",
              }}
            >
              <Card
                onClick={() => navigate("/destinations")}
                sx={{ width: "25vw" }}
                style={{ borderRadius: "40px", cursor: "pointer" }}
              >
                <CardMedia sx={{ height: "20vw" }} image={destination.image} />
              </Card>
              <div
                style={{
                  display: "flex",
                  width: "25vw",
                  justifyContent: "left",
                }}
              >
                <h1
                  style={{
                    fontSize: "24px",
                    fontWeight: "bold",
                    color: "#1c1c1e",
                    marginTop: "1vh",
                    marginLeft: "1vw",
                  }}
                >
                  {destination.name}, {destination.country_name}
                </h1>
              </div>
            </div>
          );
        })}
      </div>
    </div>
  );
}
