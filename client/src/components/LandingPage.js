import QuizApp from "./QuizApp";
import LandingPageImages from "./LandingPageImages";
import AutosuggestPage from "./AutosuggestPage";

export default function LandingPage() {
  return (
    <div>
      <div>
        <div
          style={{
            position: "absolute",
            marginTop: "35vh",
            marginLeft: "30vw",
            zIndex: "1000",
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
