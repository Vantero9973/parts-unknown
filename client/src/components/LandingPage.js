import QuizAppOne from "./quizzes/quizOne/QuizAppOne";
import QuizAppTwo from "./quizzes/quizTwo/QuizAppTwo";
import QuizAppThree from "./quizzes/quizThree/QuizAppThree";
import LandingPageImages from "./LandingPageImages";
import AutosuggestPage from "./AutosuggestPage";
import Carousel from "./Carousel";
import { v4 as uuidv4 } from "uuid";
import WhereToNext from "./WhereToNext";
import { useQuery } from "@tanstack/react-query";
import Axios from "axios";
import { useNavigate } from "react-router";

export default function LandingPage() {
  const navigate = useNavigate();

  const { data: countries, isLoading } = useQuery(["country"], () => {
    return Axios.get("http://localhost:3000/countries").then((res) => res.data);
  });

  let slides = [
    {
      key: uuidv4(),
      content: <QuizAppOne />,
    },
    {
      key: uuidv4(),
      content: <QuizAppTwo />,
    },
    {
      key: uuidv4(),
      content: <QuizAppThree />,
    },
  ];

  if (isLoading) {
    return <h1>Loading...</h1>;
  }

  return (
    <>
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
          <AutosuggestPage
            countries={countries}
            onClick={() => navigate("http://localhost:3000/destinations")}
          />
        </div>
        <LandingPageImages />
      </div>
      <div
        style={{
          width: "100vw",
          height: "80vh",
          display: "flex",
          alignItems: "center",
          justifyContent: "center",
        }}
      >
        <Carousel slides={slides} />
      </div>
      <WhereToNext />
    </>
  );
}
