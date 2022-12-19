import { useState, useEffect } from "react";
import { useParams } from "react-router-dom";

export default function PostPage() {
  const [posts, setPosts] = useState();
  const { id } = useParams();

  useEffect(() => {
    fetch(`http://localhost:3000/posts/${id}`)
      .then((res) => res.json())
      .then((data) => {
        setPosts(data);
      });
  }, [id]);

  console.log(posts);

  if (!posts) return <h1>Loading...</h1>;

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
