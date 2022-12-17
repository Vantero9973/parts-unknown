import Box from "@mui/material/Box";
import CardContent from "@mui/material/CardContent";
import CardMedia from "@mui/material/CardMedia";
import Typography from "@mui/material/Typography";
import ArrowForwardIcon from "@mui/icons-material/ArrowForward";

export default function BlogPage({ blogs }) {
  return (
    <>
      <div style={{ height: "80vh" }}>
        <a
          className="landingImage"
          style={{
            width: "33.33%",
            height: "80vh",
            float: "left",
            backgroundImage:
              "url(https://www.lonelyplanet.com/_next/image?url=https%3A%2F%2Flp-cms-production.imgix.net%2F2021-10%2Fhonolulu-beach-GettyImages-482135181.jpg%3Fauto%3Dformat%26fm%3Davif&w=1920&q=75)",
            backgroundSize: "cover",
            backgroundRepeat: "no-repeat",
            backgroundPosition: "center",
          }}
        >
          <div
            style={{
              height: "80vh",
              display: "flex",
              alignItems: "flex-end",
              //   webkitTextStroke: "1px black",
              fontFamily: "'Roboto', sans-serif",
            }}
          >
            <span
              style={{
                color: "white",
                fontSize: "32px",
                fontWeight: "600",
                // webkitTextStroke: "1px #2C2C2E",
                fontFamily: "'Roboto', sans-serif",
                width: "28vw",
                margin: "10px",
                textShadow: "#000 1px 0 10px",
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
              <ArrowForwardIcon
                style={{
                  height: "50px",
                  width: "50px",
                  fontWeight: "bolder",
                }}
              />
            </span>
          </div>
        </a>
        <a
          className="landingImage"
          style={{
            width: "33.33%",
            height: "80vh",
            float: "left",
            backgroundImage:
              "url(https://www.lonelyplanet.com/_next/image?url=https%3A%2F%2Flp-cms-production.imgix.net%2F2022-12%2FItaly-Sicily-Taormina-Sun_Shine-shutterstock_1760426138-RFC.jpg%3Fauto%3Dformat%26fm%3Davif&w=3840&q=75)",
            backgroundSize: "cover",
            backgroundRepeat: "no-repeat",
            backgroundPosition: "center",
          }}
        >
          <div
            style={{
              height: "80vh",
              display: "flex",
              alignItems: "flex-end",
              //   webkitTextStroke: "1px black",
              fontFamily: "'Roboto', sans-serif",
            }}
          >
            <span
              style={{
                color: "white",
                fontSize: "32px",
                fontWeight: "600",
                // webkitTextStroke: "1px #2C2C2E",
                fontFamily: "'Roboto', sans-serif",
                width: "28vw",
                margin: "10px",
                textShadow: "#000 1px 0 10px",
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
              <ArrowForwardIcon
                style={{
                  height: "50px",
                  width: "50px",
                  fontWeight: "bolder",
                  textShadow: "#000 1px 0 10px",
                }}
              />
            </span>
          </div>
        </a>
        <a
          className="landingImage"
          style={{
            width: "33.33%",
            height: "80vh",
            float: "left",
            backgroundImage:
              "url(https://www.lonelyplanet.com/_next/image?url=https%3A%2F%2Flp-cms-production.imgix.net%2F2022-01%2FIceland-Westfjord-Jan-Jerman-shutterstock_1879846174-RFC.jpg%3Fauto%3Dformat%26fm%3Davif&w=3840&q=75)",
            backgroundSize: "cover",
            backgroundRepeat: "no-repeat",
            backgroundPosition: "center",
          }}
        >
          <div
            style={{
              height: "80vh",
              display: "flex",
              alignItems: "flex-end",
              //   webkitTextStroke: "1px black",
              fontFamily: "'Roboto', sans-serif",
            }}
          >
            <span
              style={{
                color: "white",
                fontSize: "32px",
                fontWeight: "600",
                // webkitTextStroke: "1px #2C2C2E",
                fontFamily: "'Roboto', sans-serif",
                width: "28vw",
                margin: "10px",
                textShadow: "#000 1px 0 10px",
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
              <ArrowForwardIcon
                style={{
                  height: "50px",
                  width: "50px",
                  fontWeight: "bolder",
                  textShadow: "#000 1px 0 10px",
                }}
              />
            </span>
          </div>
        </a>
      </div>
      <div style={{ minHeight: "100vh" }}>
        {blogs.map((blog) => {
          return (
            <div
              style={{
                display: "flex",
                alignItems: "center",
                margin: "5vh",
                marginLeft: "10%",
              }}
            >
              <CardMedia
                component="img"
                sx={{
                  width: 350,
                  borderRadius: "40px",
                  height: "20vh",
                  width: "20vh",
                }}
                image={blog.image}
                alt=""
              />
              <Box
                sx={{
                  display: "flex",
                  flexDirection: "column",
                  color: "white",
                }}
              >
                <CardContent sx={{ flex: "1 0 auto" }}>
                  <Typography
                    component="div"
                    style={{
                      margin: "10px",
                      color: "darkgray",
                      fontWeight: "bold",
                    }}
                  >
                    {blog.category_one} • {blog.category_two}
                  </Typography>
                  <Typography
                    component="div"
                    variant="h5"
                    style={{
                      margin: "10px",
                      color: "#dadada",
                      fontWeight: "bold",
                    }}
                  >
                    {blog.title}
                  </Typography>
                  <Typography
                    component="div"
                    style={{ fontSize: "14px", color: "gray", margin: "10px" }}
                  >
                    {blog.read_time} • {blog.date}
                  </Typography>
                  <Typography
                    variant="subtitle1"
                    color="text.secondary"
                    component="div"
                    style={{ color: "#dadada", margin: "10px" }}
                  >
                    {blog.description}
                  </Typography>
                </CardContent>
              </Box>
            </div>
          );
        })}
      </div>
    </>
  );
}
