import { useQuery } from "@tanstack/react-query";
import Axios from "axios";
import { useNavigate } from "react-router-dom";

export default function ShopCard() {
  const navigate = useNavigate();

  const { data: items, isLoading: itemsLoading } = useQuery(["item"], () => {
    return Axios.get("http://localhost:3000/shop_items").then(
      (res) => res.data
    );
  });

  if (itemsLoading) {
    return <h1>Loading...</h1>;
  }

  return (
    <div
      style={{
        display: "flex",
        justifyContent: "center",
        alignItems: "center",
        background: "#2c2c2e",
      }}
    >
      {items.map((item) => {
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
              style={{ color: "#dadada", fontSize: "18px", fontWeight: "bold" }}
            >
              {item.name}
            </h1>
            <h1 style={{ fontSize: "12px", fontWeight: "bold", color: "gray" }}>
              TRAVEL GUIDE
            </h1>
          </div>
        );
      })}
    </div>
  );
}
