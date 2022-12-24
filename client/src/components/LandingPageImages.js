import ArrowForwardIcon from "@mui/icons-material/ArrowForward";
import { useQuery } from "@tanstack/react-query";
import Axios from "axios";
import { useParams, useNavigate } from "react-router-dom";

export default function LandingPageImages() {
  const navigate = useNavigate();
  const { id } = useParams();

  const { data: landingImages, isLoading } = useQuery(["landingImage"], () => {
    return Axios.get("http://localhost:3000/landingimages").then(
      (res) => res.data
    );
  });

  if (isLoading) {
    return <h1>Loading...</h1>;
  }

  return (
    <div style={{ display: "flex" }}>
      {landingImages.map((landingImage) => {
        return (
          <>
            <div style={{ height: "80vh", overflow: "hidden" }}>
              <div
                style={{
                  display: "flex",
                  height: "80vh",
                  width: "33.33vw",
                  position: "absolute",
                }}
              >
                <div
                  style={{
                    height: "80vh",
                    width: "33.33vw",
                    display: "flex",
                    alignItems: "flex-end",
                    fontFamily: "'Roboto', sans-serif",
                    float: "left",
                  }}
                >
                  <span
                    style={{
                      color: "white",
                      fontSize: "30px",
                      fontWeight: "600",
                      fontFamily: "'Roboto', sans-serif",
                      width: "28vw",
                      margin: "10px",
                      textShadow: "#000 1px 0 5px",
                      zIndex: "3",
                    }}
                  >
                    {landingImage.title}
                  </span>
                  <span
                    style={{
                      display: "flex",
                      justifyContent: "right",
                      color: "white",
                      width: "5vw",
                      margin: "10px",
                    }}
                  >
                    <div
                      onClick={() => navigate(`/blogs/${landingImage.id}`)}
                      style={{ zIndex: "3" }}
                    >
                      <ArrowForwardIcon
                        className="arrowIcon"
                        style={{
                          height: "60px",
                          width: "60px",
                          fontWeight: "bolder",
                          cursor: "pointer",
                        }}
                      />
                    </div>
                  </span>
                </div>
              </div>
              <div
                style={{
                  height: "80vh",
                  width: "33.33vw",
                  float: "left",
                  overflow: "hidden",
                }}
              >
                <a
                  onClick={() => navigate(`/blogs/${landingImage.id}`)}
                  className="landingImage"
                  style={{
                    width: "33.33vw",
                    height: "80vh",
                    float: "left",
                    backgroundImage: `url(${landingImage.image})`,
                    backgroundSize: "cover",
                    backgroundRepeat: "no-repeat",
                    backgroundPosition: "center",
                    overflow: "hidden",
                    cursor: "pointer",
                  }}
                />
              </div>
            </div>
          </>
        );
      })}
    </div>
  );
}
