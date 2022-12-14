export default function BlogPage({ blogs }) {
  return (
    <div>
      {blogs.map((blog) => {
        return (
          <div
            style={{
              display: "flex",
              justifyContent: "center",
              alignItems: "center",
              width: "100vw",
            }}
          >
            <div>
              <img
                style={{
                  maxWidth: "90vw",
                  maxHeight: "80vh",
                }}
                src={blog.image}
                alt=""
              />
              <h2>{blog.title}</h2>
              <p>{blog.description}</p>
              <p>{blog.body}</p>
            </div>
          </div>
        );
      })}
    </div>
  );
}
