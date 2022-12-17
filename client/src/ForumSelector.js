import { useState, useEffect } from "react";
import { useParams, useNavigate } from "react-router-dom";

export default function ForumSelector({ countries }) {
  const [forums, setForums] = useState([]);
  const { id } = useParams();
  const navigate = useNavigate();

  useEffect(() => {
    fetch(`http://localhost:3000/forums/${id}`)
      .then((res) => res.json())
      .then((data) => {
        setForums(data);
      });
  }, [id]);

  {
    return (
      <div
        style={{
          display: "flex",
          flexDirection: "column",
          justifyContent: "center",
          alignItems: "center",
        }}
      >
        {countries.map((country) => {
          return (
            <table>
              <tr onClick={() => navigate(`/forum/${country.id}`)}>
                {country.name}
              </tr>
            </table>
          );
        })}
      </div>
    );
  }
}
