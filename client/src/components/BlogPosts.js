import { useNavigate } from "react-router-dom";
import Box from "@mui/material/Box";
import CardContent from "@mui/material/CardContent";
import CardMedia from "@mui/material/CardMedia";
import Typography from "@mui/material/Typography";
import ThumbUpOffAltIcon from "@mui/icons-material/ThumbUpOffAlt";
import AOS from "aos";
import "aos/dist/aos.css";
AOS.init();

export default function BlogPosts({ blogs }) {
  const navigate = useNavigate();

  return (
    <div className="blogPostsContainer">
      <div className="blogContainer">
        {blogs.map((blog) => {
          return (
            <div
              data-aos="fade-up"
              data-aos-duration="500"
              className="blogPostsDiv"
            >
              <CardMedia
                component="img"
                sx={{
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
                  <Typography className="blogDescription" component="div">
                    {blog.category_one} • {blog.category_two}
                  </Typography>
                  <Typography
                    component="div"
                    variant="h5"
                    className="blogPostsTypography"
                    onClick={() => navigate(`/blogs/${blog.id}`)}
                  >
                    {blog.title}
                  </Typography>
                  <Typography
                    component="div"
                    className="blogPostsSecondaryTypography"
                  >
                    {blog.read_time} • {blog.date}
                  </Typography>
                  <Typography
                    className="blogDescription"
                    variant="subtitle1"
                    color="text.secondary"
                    component="div"
                  >
                    {blog.description}
                  </Typography>
                  <Typography
                    variant="subtitle1"
                    color="text.secondary"
                    component="div"
                    className="blogPostsLikesContainer"
                  >
                    <div className="blogPostsLikesDiv">
                      <ThumbUpOffAltIcon />
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
