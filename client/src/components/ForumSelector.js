import { useNavigate } from "react-router-dom";

export default function ForumSelector({ countries }) {
  const navigate = useNavigate();

  return (
    <div
      style={{
        display: "flex",
        flexDirection: "column",
        alignItems: "center",
        color: "#dadada",
      }}
    >
      <div>
        <table style={{ display: "flex", flexDirection: "row" }}>
          <tr
            style={{
              width: "30vw",
              fontWeight: "bold",
              fontSize: "20px",
              marginBottom: "10px",
            }}
          >
            Countries:
          </tr>
          <tr
            style={{
              width: "8vw",
              fontWeight: "bold",
              fontSize: "20px",
              marginBottom: "10px",
              display: "flex",
              justifyContent: "center",
            }}
          >
            # Topics
          </tr>
          <tr
            style={{
              width: "8vw",
              fontWeight: "bold",
              fontSize: "20px",
              marginBottom: "10px",
              display: "flex",
              justifyContent: "center",
            }}
          >
            # Posts
          </tr>
        </table>
        {countries.map((country) => {
          return (
            <table
              style={{
                display: "flex",
                flexDirection: "row",
              }}
            >
              <tr
                style={{
                  display: "flex",
                  alignItems: "flex-start",
                  borderBottom: "1px solid white",
                  width: "30vw",
                }}
              >
                <td
                  style={{
                    cursor: "pointer",
                    color: "#006699",
                    fontSize: "18px",
                    fontWeight: "bold",
                  }}
                  onClick={() => navigate(`/forums/${country.id}`)}
                >
                  {country.name}
                </td>
              </tr>
              <tr
                style={{
                  display: "flex",
                  alignItems: "center",
                  justifyContent: "center",
                  cursor: "pointer",
                  borderBottom: "1px solid white",
                  width: "8vw",
                }}
              >
                <td>0</td>
              </tr>
              <tr
                style={{
                  display: "flex",
                  alignItems: "flex-start",
                  cursor: "pointer",
                  borderBottom: "1px solid white",
                  width: "8vw",
                  justifyContent: "center",
                }}
              >
                <td>0</td>
              </tr>
            </table>
          );
        })}
      </div>
    </div>
  );
}
