import QuizApp from "./QuizApp";
import LandingPageImages from "./LandingPageImages";
import AutosuggestPage from "./AutosuggestPage";
import Carousel from "./Carousel";
import { v4 as uuidv4 } from "uuid";
import WhereToNext from "./WhereToNext";

export default function LandingPage() {
  let slides = [
    {
      key: uuidv4(),
      content: (
        <div style={{ width: "45vw" }}>
          <QuizApp />
        </div>
      ),
    },
    {
      key: uuidv4(),
      content: (
        <div style={{ width: "45vw" }}>
          <QuizApp />
        </div>
      ),
    },
    {
      key: uuidv4(),
      content: (
        <div style={{ width: "45vw" }}>
          <QuizApp />
        </div>
      ),
    },
  ];

  return (
    <div style={{ minHeight: "150vh" }}>
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
            height: "80vh",
          }}
        >
          <div style={{ width: "50vw", marginTop: "65vh" }}>
            <Carousel slides={slides} />
          </div>
        </div>
      </div>
      <WhereToNext />
    </div>
  );
}
