import Box from "@mui/material/Box";
import CardContent from "@mui/material/CardContent";
import CardMedia from "@mui/material/CardMedia";
import Typography from "@mui/material/Typography";

export default function BlogPage({ blogs }) {
  return (
    <div>
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
  );
}
