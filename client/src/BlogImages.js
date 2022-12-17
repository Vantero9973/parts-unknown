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
              fontSize: "36px",
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
            <a href="/stories" style={{ zIndex: "3" }}>
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
              fontSize: "36px",
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
            <a href="/stories" style={{ zIndex: "3" }}>
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
              fontSize: "36px",
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
            <a href="/stories" style={{ zIndex: "3" }}>
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
            href="/stories"
            className="landingImage"
            style={{
              width: "33.33vw",
              height: "80vh",
              float: "left",
              backgroundImage:
                "url(https://www.lonelyplanet.com/_next/image?url=https%3A%2F%2Flp-cms-production.imgix.net%2F2021-10%2Fhonolulu-beach-GettyImages-482135181.jpg%3Fauto%3Dformat%26fm%3Davif&w=1920&q=75)",
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
            href="/stories"
            className="landingImage"
            style={{
              width: "33.33vw",
              height: "80vh",
              float: "left",
              backgroundImage:
                "url(https://www.lonelyplanet.com/_next/image?url=https%3A%2F%2Flp-cms-production.imgix.net%2F2022-12%2FItaly-Sicily-Taormina-Sun_Shine-shutterstock_1760426138-RFC.jpg%3Fauto%3Dformat%26fm%3Davif&w=3840&q=75)",
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
            href="/stories"
            className="landingImage"
            style={{
              width: "33.33vw",
              height: "80vh",
              float: "left",
              backgroundImage:
                "url(https://www.lonelyplanet.com/_next/image?url=https%3A%2F%2Flp-cms-production.imgix.net%2F2022-01%2FIceland-Westfjord-Jan-Jerman-shutterstock_1879846174-RFC.jpg%3Fauto%3Dformat%26fm%3Davif&w=3840&q=75)",
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
