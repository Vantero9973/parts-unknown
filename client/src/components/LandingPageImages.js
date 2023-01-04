import ArrowForwardIcon from "@mui/icons-material/ArrowForward";
import { useQuery } from "@tanstack/react-query";
import Axios from "axios";
import { useNavigate } from "react-router-dom";

export default function LandingPageImages() {
  const navigate = useNavigate();

  const { data: landingImages, isLoading } = useQuery(["landingImage"], () => {
    return Axios.get("http://localhost:3000/landingimages").then(
      (res) => res.data
    );
  });

  if (isLoading) {
    return <h1>Loading...</h1>;
  }

  return (
    <>
      <div
        className="absoluteContainer"
        style={{
          display: "flex",
          height: "80vh",
          width: "100vw",
          position: "absolute",
        }}
      >
        <div
          style={{
            height: "80vh",
            width: "100vw",
            display: "flex",
            justifyContent: "space-between",
            alignItems: "flex-end",
            fontFamily: "'Roboto', sans-serif",
          }}
        >
          <span
            className="hiddenTitle"
            style={{
              color: "white",
              fontSize: "36px",
              fontWeight: "600",
              fontFamily: "'Roboto', sans-serif",
              width: "80vw",
              margin: "10px",
              textShadow: "#000 1px 0 5px",
              zIndex: "3",
            }}
          >
            {landingImages[0].title}
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
              className="hiddenTitle"
              onClick={() => navigate(`/blogs/${landingImages[0].id}`)}
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
      <div className="hiddenImage">
        <a
          onClick={() => navigate(`/blogs/${landingImages[0].id}`)}
          style={{
            width: "100vw",
            height: "80vh",
            float: "left",
            backgroundImage: `url(${landingImages[0].image})`,
            backgroundSize: "cover",
            backgroundRepeat: "no-repeat",
            backgroundPosition: "center",
            overflow: "hidden",
            cursor: "pointer",
            zIndex: "1",
            webkitFilter: "brightness(80%)",
            filter: "brightness(80%)",
          }}
        />
      </div>
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
                      className="notHiddenImage"
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
                        className="notHiddenImage"
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
                  className="notHiddenImage"
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
    </>
  );
}
