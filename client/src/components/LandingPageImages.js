import ArrowForwardIcon from "@mui/icons-material/ArrowForward";

export default function LandingPageImages() {
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
            12 Things to Know Before Traveling to Hawaii
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
            <a href="/blogs/1" style={{ zIndex: "3" }}>
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
            10 places to escape the cold and find winter sun in Europe
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
            <a href="/blogs/2" style={{ zIndex: "3" }}>
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
            12 unforgettable hikes around the world
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
            <a href="/blogs/3" style={{ zIndex: "3" }}>
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
            href="/blogs/1"
            className="landingImage"
            style={{
              width: "33.33vw",
              height: "80vh",
              float: "left",
              backgroundImage: "url(https://i.imgur.com/jSRAr67.jpg)",
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
            href="/blogs/2"
            className="landingImage"
            style={{
              width: "33.33vw",
              height: "80vh",
              float: "left",
              backgroundImage: "url(https://i.imgur.com/7ypXu71.jpg)",
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
            href="/blogs/3"
            className="landingImage"
            style={{
              width: "33.33vw",
              height: "80vh",
              float: "left",
              backgroundImage: "url(https://i.imgur.com/V6BnBy6.jpg)",
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
