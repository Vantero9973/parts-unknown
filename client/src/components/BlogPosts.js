import { useState } from "react";
import { useNavigate, useParams } from "react-router-dom";
import { useQuery } from "@tanstack/react-query";
import Axios from "axios";
import Box from "@mui/material/Box";
import CardContent from "@mui/material/CardContent";
import CardMedia from "@mui/material/CardMedia";
import Typography from "@mui/material/Typography";
import ThumbUpOffAltIcon from "@mui/icons-material/ThumbUpOffAlt";
import ThumbUpAltIcon from "@mui/icons-material/ThumbUpAlt";
import AOS from "aos";
import "aos/dist/aos.css";
AOS.init();

export default function BlogPosts({ blogs }) {
  const [button, setButton] = useState(<ThumbUpOffAltIcon />);
  const navigate = useNavigate();
  // const { id } = useParams();

  function handleClick() {
    setButton(<ThumbUpAltIcon />);
  }

  // const { data: blogLikes, isLoading } = useQuery(["blog"], () => {
  //   return Axios.get(`http://localhost:3000/blogs/${id}`).then(
  //     (res) => res.data
  //   );
  // });

  // if (isLoading) {
  //   return <h1>Loading...</h1>;
  // }

  // const likeButton = (
  //   <div>
  //     {blogLikes.map((blog) => {
  //       return (
  //         <div
  //           style={{
  //             display: "flex",
  //             alignItems: "center",
  //             gap: "5px",
  //           }}
  //           onClick={handleClick}
  //         >
  //           {button}
  //           {blog.likes}
  //         </div>
  //       );
  //     })}
  //   </div>
  // );

  return (
    <div
      style={{
        display: "flex",
        flexDirection: "column",
        alignItems: "center",
      }}
    >
      <div style={{ width: "82vw" }}>
        {blogs.map((blog) => {
          return (
            <div
              data-aos="fade-up"
              data-aos-duration="500"
              style={{
                display: "flex",
                alignItems: "center",
                margin: "5vh",
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
                      cursor: "pointer",
                    }}
                    onClick={() => navigate(`/blogs/${blog.id}`)}
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
                  <Typography
                    variant="subtitle1"
                    color="text.secondary"
                    component="div"
                    style={{
                      color: "#dadada",
                      margin: "10px",
                    }}
                  >
                    <div
                      style={{
                        display: "flex",
                        alignItems: "center",
                        gap: "5px",
                      }}
                      onClick={handleClick}
                    >
                      {button}
                      {blog.likes}
                    </div>
                  </Typography>
                </CardContent>
              </Box>
            </div>
          );
        })}
      </div>
    </div>
  );
}
