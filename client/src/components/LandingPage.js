import QuizApp from "./QuizApp";
import LandingPageImages from "./LandingPageImages";
import AutosuggestPage from "./AutosuggestPage";
import Carousel from "./Carousel";
import { v4 as uuidv4 } from "uuid";

export default function LandingPage({ user }) {
  let slides = [
    {
      key: uuidv4(),
      content: (
        <div style={{ width: "40vw" }}>
          <QuizApp />
        </div>
      ),
    },
    {
      key: uuidv4(),
      content: (
        <div
          style={{
            display: "flex",
            justifyContent: "center",
            alignItems: "center",
            height: "50vh",
            width: "40vw",
            background: "#2c2c2e",
            border: "2px solid #dadada",
            borderRadius: "40px",
            cursor: "pointer",
          }}
        >
          <h1 style={{ color: "#dadada" }}>Quiz 2 Placeholder</h1>
        </div>
      ),
    },
    {
      key: uuidv4(),
      content: (
        <div
          style={{
            display: "flex",
            justifyContent: "center",
            alignItems: "center",
            height: "50vh",
            width: "40vw",
            background: "#2c2c2e",
            border: "2px solid #dadada",
            borderRadius: "40px",
            cursor: "pointer",
          }}
        >
          <h1 style={{ color: "#dadada" }}>Quiz 3 Placeholder</h1>
        </div>
      ),
    },
  ];

  if (user) {
    return (
      <div style={{ minHeight: "140vh" }}>
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
            <div style={{ width: "50vw", marginTop: "50vh" }}>
              <Carousel slides={slides} />
            </div>
          </div>
        </div>
      </div>
    );
  } else {
    return (
      <div style={{ minHeight: "140vh" }}>
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
            <div style={{ width: "50vw", marginTop: "50vh" }}>
              <Carousel slides={slides} />
            </div>
          </div>
        </div>
      </div>
    );
  }
}
