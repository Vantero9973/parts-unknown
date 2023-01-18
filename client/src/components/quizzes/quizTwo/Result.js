import React from "react";
import PropTypes from "prop-types";
import { useQuery } from "@tanstack/react-query";
import Axios from "axios";
import { useNavigate } from "react-router-dom";

function Result(props) {
  const navigate = useNavigate();

  const { data: destinations, isLoading } = useQuery(["destination"], () => {
    return Axios.get("/api/destinations").then(
      (res) => res.data
    );
  });

  Result.propTypes = {
    quizResult: PropTypes.string.isRequired,
  };

  const destinationLink = destinations?.find(
    (destination) =>
      destination.name.toLowerCase() === props.quizResult.toLowerCase()
  );

  console.log(destinations);

  if (isLoading) {
    return <h1>Loading...</h1>;
  }

  console.log(destinationLink);
  console.log(props.quizResult);

  return (
    <div>
      <div
        style={{
          display: "flex",
          justifyContent: "center",
          alignItems: "center",
          fontSize: "24px",
          gap: "0.5vw",
          height: "40vh",
          background: "#2c2c2e",
          borderRadius: "40px",
          color: "#dadada",
          width: "45vw",
        }}
      >
        You got
        <strong
          style={{
            fontSize: "32px",
            color: "#006699",
          }}
          onClick={() => navigate(`/countries/${destinationLink.country_id}`)}
        >
          {props.quizResult}
          {/* <strong style={{ color: "#dadada" }}>!</strong> */}
        </strong>
        !
      </div>
    </div>
  );
}

export default Result;
