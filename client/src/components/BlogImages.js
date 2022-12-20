import ArrowForwardIcon from "@mui/icons-material/ArrowForward";

export default function BlogImages() {
  return (
    <>
      <div
        style={{
          height: "80vh",
          position: "absolute",
        }}
      >
        <div
          style={{
            height: "80vh",
            width: "33.33%",
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
            Thailand's top 6 train journeys
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
            <a href="/blogs/9" style={{ zIndex: "3" }}>
              <ArrowForwardIcon
                className="arrowIcon"
                style={{
                  height: "60px",
                  width: "60px",
                  fontWeight: "bolder",
                }}
              />
            </a>
          </span>
        </div>
        <div
          style={{
            height: "80vh",
            width: "33.33%",
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
            Top 10 things to know before you travel to Jordan
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
            <a href="/blogs/10" style={{ zIndex: "3" }}>
              <ArrowForwardIcon
                style={{
                  height: "60px",
                  width: "60px",
                  fontWeight: "bolder",
                }}
              />
            </a>
          </span>
        </div>
        <div
          style={{
            height: "80vh",
            width: "33.33%",
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
            7-day journey on the Trans Bhutan Trail
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
            <a href="/blogs/8" style={{ zIndex: "3" }}>
              <ArrowForwardIcon
                style={{
                  height: "60px",
                  width: "60px",
                  fontWeight: "bolder",
                }}
              />
            </a>
          </span>
        </div>
      </div>
      <div style={{ height: "80vh", overflow: "hidden" }}>
        <div
          style={{
            height: "80vh",
            width: "33.33vw",
            float: "left",
            overflow: "hidden",
          }}
        >
          <a
            href="/blogs/9"
            className="landingImage"
            style={{
              width: "33.33vw",
              height: "80vh",
              float: "left",
              backgroundImage: "url(https://i.imgur.com/3Ce0cgz.jpg)",
              backgroundSize: "cover",
              backgroundRepeat: "no-repeat",
              backgroundPosition: "center",
              overflow: "hidden",
            }}
          />
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
            href="/blogs/10"
            className="landingImage"
            style={{
              width: "33.33vw",
              height: "80vh",
              float: "left",
              backgroundImage: "url(https://i.imgur.com/ZwNJNEC.jpg)",
              backgroundSize: "cover",
              backgroundRepeat: "no-repeat",
              backgroundPosition: "center",
              overflow: "hidden",
            }}
          />
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
            href="/blogs/8"
            className="landingImage"
            style={{
              width: "33.33vw",
              height: "80vh",
              float: "left",
              backgroundImage: "url(https://i.imgur.com/bKMkhXB.jpg)",
              backgroundSize: "cover",
              backgroundRepeat: "no-repeat",
              backgroundPosition: "center",
              overflow: "hidden",
            }}
          />
        </div>
      </div>
    </>
  );
}
