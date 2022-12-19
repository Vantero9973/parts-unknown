import React from "react";
import PropTypes from "prop-types";
// import Confetti from "react-confetti";
// import useWindowSize from "react-use/lib/useWindowSize";

function Result(props) {
  // const width = useWindowSize;
  // const height = useWindowSize;

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
        }}
      >
        {/* <Confetti
          width={width}
          height={height}
          style={{ borderRadius: "50px" }}
        /> */}
        You got
        <strong style={{ fontSize: "32px" }}>{props.quizResult}!</strong>
      </div>
    </div>
  );
}

Result.propTypes = {
  quizResult: PropTypes.string.isRequired,
};

export default Result;
