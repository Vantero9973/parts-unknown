import { useParams } from "react-router-dom";
import { useQuery } from "@tanstack/react-query";
import Axios from "axios";
import default_avatar from "../avatar_default.png";

export default function FullBlogPost() {
  const { id } = useParams();

  const { data: blogs, isLoading: blogsLoading } = useQuery(["blog"], () => {
    return Axios.get(`http://localhost:3000/blogs/${id}`).then(
      (res) => res.data
    );
  });

  const { data: users, isLoading: usersLoading } = useQuery(["user"], () => {
    return Axios.get(`http://localhost:3000/users`).then((res) => res.data);
  });

  if ((usersLoading, blogsLoading)) {
    return <h1>Loading...</h1>;
  }

  // const userdude = (
  //   <div>
  //     {users.map((user) => {
  //       return (
  //         <h1
  //           style={{ fontSize: "20px", fontWeight: "bold", minWidth: "10vw" }}
  //         >
  //           {user.first_name} {user.last_name}
  //         </h1>
  //       );
  //     })}
  //   </div>
  // );

  return (
    <div>
      {blogs.map((blog) => {
        return (
          <div
            style={{
              display: "flex",
              flexDirection: "column",
              alignItems: "center",
              justifyContent: "center",
              marginTop: "10vh",
            }}
          >
            <div
              style={{
                display: "flex",
                alignItems: "center",
                flexDirection: "row",
                gap: "20vw",
                paddingLeft: "12vw",
                paddingRight: "12vw",
              }}
            >
              <h1 style={{ fontSize: "36px", fontWeight: "bold" }}>
                {blog.title}
              </h1>
              <div
                style={{
                  display: "flex",
                  alignItems: "center",
                  justifyContent: "space-between",
                  flexDirection: "row",
                  gap: "1vh",
                }}
              >
                <img
                  src={default_avatar}
                  alt=""
                  style={{ height: "50px", width: "50px" }}
                />
                <div
                  style={{
                    display: "flex",
                    flexDirection: "column",
                  }}
                >
                  {/* <h1>{userdude}</h1> */}
                  <h1
                    style={{
                      fontSize: "20px",
                      fontWeight: "bold",
                      minWidth: "10vw",
                    }}
                  >
                    Alex Van Vleet
                  </h1>
                  <hr class="solid"></hr>
                  <h1
                    style={{
                      fontSize: "16px",
                      lineHeight: "100%",
                      marginTop: "5px",
                    }}
                  >
                    {blog.date} • {blog.read_time}
                  </h1>
                </div>
              </div>
            </div>
            <div
              style={{
                display: "flex",
                flexDirection: "column",
                justifyContent: "center",
                alignItems: "center",
              }}
            >
              <img
                src={blog.image}
                alt=""
                style={{ maxHeight: "90vh", maxWidth: "75vw", margin: "5vh" }}
              />
            </div>
            <div
              style={{
                paddingLeft: "20vw",
                paddingRight: "20vw",
                fontSize: "20px",
              }}
            >
              <p style={{ margin: "5vh" }}>{blog.body}</p>
            </div>
          </div>
        );
      })}
    </div>
  );
}
