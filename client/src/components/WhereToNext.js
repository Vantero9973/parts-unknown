import Card from "@mui/material/Card";
import CardMedia from "@mui/material/CardMedia";
import Button from "@mui/material/Button";
import { useNavigate } from "react-router-dom";
import { useQuery } from "@tanstack/react-query";
import Axios from "axios";

export default function WhereToNext() {
  const navigate = useNavigate();

  const { data: destinations, isLoading } = useQuery(["destination"], () => {
    return Axios.get(`/api/randomdestinations`).then(
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
        paddingLeft: "8vw",
        paddingRight: "8vw",
        background: "lightgray",
        display: "flex",
        flexDirection: "column",
        alignItems: "center",
        justifyContent: "center",
      }}
    >
      <div
        style={{
          width: "80vw",
          display: "flex",
          justifyContent: "space-between",
          alignItems: "space-between",
        }}
      >
        <div>
          <h1 style={{ fontSize: "24px", fontWeight: "bold", color: "gray" }}>
            PLAN YOUR TRIP
          </h1>
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
            alignItems: "center",
          }}
        >
          <Button
            variant="outlined"
            onClick={() => navigate("/destinations")}
            style={{
              height: "fit-content",
              width: "fit-content",
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
          justifyContent: "center",
          alignItems: "center",
          marginTop: "10vh",
          gap: "2rem",
        }}
      >
        {destinations.map((destination) => {
          return (
            <div
              style={{
                display: "flex",
                flexDirection: "column",
                flexWrap: "wrap",
                justifyContent: "center",
                alignItems: "center",
                margin: "1vh",
              }}
            >
              <Card
                onClick={() => navigate(`/countries/${destination.country_id}`)}
                sx={{ width: "25vw" }}
                style={{ borderRadius: "40px", cursor: "pointer" }}
              >
                <CardMedia
                  sx={{ height: "20vw", minHeight: "200px", minWidth: "200px" }}
                  image={destination.image}
                />
              </Card>
              <div
                style={{
                  display: "flex",
                  width: "25vw",
                  justifyContent: "left",
                }}
              >
                <h1
                  className="whereToNext"
                  style={{
                    fontSize: "clamp(1rem, 2.5vw, 24px)",
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
