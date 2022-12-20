import { useQuery } from "@tanstack/react-query";
import Axios from "axios";
import { useParams } from "react-router-dom";

export default function PostPage() {
  const { id } = useParams();

  const { data: posts, isLoading } = useQuery(["post"], () => {
    return Axios.get(`http://localhost:3000/posts/${id}`).then(
      (res) => res.data
    );
  });

  if (isLoading) {
    return <h1>Loading...</h1>;
  }

  return (
    <div>
      <h1>hello</h1>
      <div>
        {posts.map((post) => {
          return (
            <div>
              <h1>{post.title}</h1>
              <p>{post.body}</p>
            </div>
          );
        })}
      </div>
    </div>
  );
}
