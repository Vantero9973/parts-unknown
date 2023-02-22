import Card from "@mui/material/Card";
import CardMedia from "@mui/material/CardMedia";
import Button from "@mui/material/Button";
import { useNavigate } from "react-router-dom";
import { useQuery } from "@tanstack/react-query";
import Axios from "axios";

export default function WhereToNext() {
  const navigate = useNavigate();

  const { data: destinations, isLoading } = useQuery(["destination"], () => {
    return Axios.get(`/api/randomdestinations`).then((res) => res.data);
  });

  if (isLoading) {
    return <h1>Loading...</h1>;
  }

  return (
    <div className="whereToNextContainer">
      <div className="whereToNextSecondaryContainer">
        <div>
          <h1 className="whereToNextTitle">PLAN YOUR TRIP</h1>
          <h1 className="whereToNextSecondaryTitle">Where to next?</h1>
        </div>
        <div className="whereToNextDiv">
          <Button
            variant="outlined"
            onClick={() => navigate("/destinations")}
            className="whereToNextButton"
          >
            View all destinations
          </Button>
        </div>
      </div>
      <div className="whereToNextSecondaryDiv">
        {destinations.map((destination) => {
          return (
            <div className="whereToNextDestinationsContainer">
              <Card
                onClick={() => navigate(`/countries/${destination.country_id}`)}
                sx={{ width: "25vw" }}
                className="whereToNextCard"
              >
                <CardMedia
                  sx={{ height: "20vw", minHeight: "200px", minWidth: "200px" }}
                  image={destination.image}
                />
              </Card>
              <div className="whereToNextDestinationsDiv">
                <h1 className="whereToNextName">
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
