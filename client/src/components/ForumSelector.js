// import { useState, useEffect } from "react";
import { useNavigate } from "react-router-dom";

export default function ForumSelector({ countries }) {
  // const [forums, setForums] = useState([]);
  // const { id } = useParams();
  const navigate = useNavigate();

  // useEffect(() => {
  //   fetch(`http://localhost:3000/forums/${id}`)
  //     .then((res) => res.json())
  //     .then((data) => {
  //       setForums(data);
  //     });
  // }, [id]);

  // const flags = (
  //   <div>
  //     {forums.map((forum) => {
  //       return (
  //         <img
  //           src={forum.flag}
  //           alt="flag"
  //           style={{ maxHeight: "100px", maxWidth: "100px" }}
  //         />
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
      <div>
        {countries.map((country) => {
          return (
            <h1
              style={{
                display: "flex",
                alignItems: "flex-start",
                cursor: "pointer",
              }}
              onClick={() => navigate(`/forums/${country.id}`)}
            >
              {country.name}
            </h1>
          );
        })}
      </div>
    </div>
  );
}
