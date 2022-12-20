import QuizApp from "./QuizApp";
import LandingPageImages from "./LandingPageImages";
import AutosuggestPage from "./AutosuggestPage";

export default function LandingPage({ user }) {
  if (user) {
    return (
      <div>
        <h1 style={{ zIndex: "2000", fontSize: "100px", color: "black" }}>
          Welcome, {user.username}!
        </h1>
        <div>
          <div
            style={{
              position: "absolute",
              marginTop: "35vh",
              marginLeft: "30vw",
              zIndex: "10",
              fontSize: "32px",
            }}
          >
            <AutosuggestPage />
          </div>
          <LandingPageImages />
        </div>
        <div
          style={{ width: "100vw", display: "flex", justifyContent: "center" }}
        >
          <div
            style={{
              display: "flex",
              justifyContent: "center",
              alignItems: "center",
              background: "#1C1C1E",
              width: "100vw",
            }}
          >
            <div
              style={{
                width: "50vw",
              }}
            >
              <QuizApp style={{ height: "50vh" }} />
            </div>
          </div>
        </div>
      </div>
    );
  } else {
    return (
      <div>
        <div>
          <div
            style={{
              position: "absolute",
              marginTop: "35vh",
              marginLeft: "30vw",
              zIndex: "10",
              fontSize: "32px",
            }}
          >
            <AutosuggestPage />
          </div>
          <LandingPageImages />
        </div>
        <div
          style={{ width: "100vw", display: "flex", justifyContent: "center" }}
        >
          <div
            style={{
              display: "flex",
              justifyContent: "center",
              alignItems: "center",
              background: "#1C1C1E",
              width: "100vw",
            }}
          >
            <div
              style={{
                width: "50vw",
              }}
            >
              <QuizApp style={{ height: "50vh" }} />
            </div>
          </div>
        </div>
      </div>
    );
  }
}
