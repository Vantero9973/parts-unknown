import React from "react";
import PropTypes from "prop-types";
import Confetti from "react-confetti";
import useWindowSize from "react-use/lib/useWindowSize";
import { CSSTransition } from "react-transition-group";

function Result(props) {
  const width = "1500px";
  const height = "340px";

  return (
    <div>
      <Confetti width={width} height={height} style={{ marginTop: "90vh" }} />
      <CSSTransition
        className="container result"
        component="div"
        transitionName="fade"
        transitionEnterTimeout={800}
        transitionLeaveTimeout={500}
        transitionAppear
        transitionAppearTimeout={500}
      >
        <div
          style={{
            display: "flex",
            justifyContent: "center",
            alignItems: "center",
            fontSize: "24px",
            gap: "0.5vw",
          }}
        >
          You got
          <strong style={{ fontSize: "32px" }}>{props.quizResult}!</strong>
        </div>
      </CSSTransition>
    </div>
  );
}

Result.propTypes = {
  quizResult: PropTypes.string.isRequired,
};

export default Result;
