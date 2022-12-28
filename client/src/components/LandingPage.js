import QuizApp from "./QuizApp";
import LandingPageImages from "./LandingPageImages";
import AutosuggestPage from "./AutosuggestPage";
import Carousel from "./Carousel";
import { v4 as uuidv4 } from "uuid";
import WhereToNext from "./WhereToNext";
import { useQuery } from "@tanstack/react-query";
import Axios from "axios";

export default function LandingPage() {
  const { data: countries, isLoading } = useQuery(["country"], () => {
    return Axios.get("http://localhost:3000/countries").then((res) => res.data);
  });

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

  if (isLoading) {
    return <h1>Loading...</h1>;
  }

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
          <AutosuggestPage countries={countries} />
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
