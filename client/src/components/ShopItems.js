import { useNavigate } from "react-router-dom";

export default function ShopItems({ items, search }) {
  const navigate = useNavigate();

  const searchItems = items?.filter((country) =>
    country.name.toLowerCase().includes(search.toLowerCase())
  );

  return (
    <div
      style={{
        width: "90vw",
        display: "flex",
        flexWrap: "wrap",
        justifyContent: "center",
        alignItems: "center",
      }}
    >
      {searchItems.map((item) => {
        console.log(item);
        return (
          <div
            style={{
              height: "35vh",
              width: "20vh",
              display: "flex",
              flexDirection: "column",
              alignItems: "center",
              justifyContent: "center",
              marginLeft: "5px",
              marginRight: "5px",
              cursor: "pointer",
            }}
            onClick={() => navigate(`/shop/${item.id}`)}
          >
            <img
              src={item.image}
              alt=""
              style={{ height: "25vh", width: "20vh" }}
            />
            <h1
              style={{
                color: "#dadada",
                fontSize: "18px",
                fontWeight: "bold",
              }}
            >
              {item.name}
            </h1>
            <h1
              style={{
                fontSize: "12px",
                fontWeight: "bold",
                color: "gray",
              }}
            >
              TRAVEL GUIDE
            </h1>
          </div>
        );
      })}
    </div>
  );
}
