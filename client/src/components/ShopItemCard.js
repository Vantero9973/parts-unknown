import { useQuery } from "@tanstack/react-query";
import Axios from "axios";
import { useParams } from "react-router-dom";
import Button from "@mui/material/Button";

export default function ShopItemCard() {
  const { id } = useParams();

  const { data: items, isLoading: itemsLoading } = useQuery(["item"], () => {
    return Axios.get(`http://localhost:3000/shop_items/${id}`).then(
      (res) => res.data
    );
  });

  if (itemsLoading) {
    return <h1>Loading...</h1>;
  }

  return (
    <div
      style={{
        width: "100vw",
        display: "flex",
        justifyContent: "center",
        alignItems: "center",
        color: "#dadada",
      }}
    >
      {items.map((item) => {
        return (
          <div
            style={{
              width: "80vw",
              minHeight: "92vh",
              display: "flex",
              justifyContent: "center",
              alignItems: "center",
              gap: "5rem",
            }}
          >
            <div
              style={{
                display: "flex",
                flexDirection: "column",
                justifyContent: "center",
                alignItems: "center",
              }}
            >
              <img
                src={item.image}
                alt=""
                style={{
                  height: "70vh",
                  maxWidth: "70vh",
                }}
              />
            </div>
            <div
              style={{
                width: "30vw",
                display: "flex",
                flexDirection: "column",
                justifyContent: "center",
                alignItems: "flex-start",
                gap: "2rem",
              }}
            >
              <h1 style={{ fontSize: "32px", fontWeight: "bold" }}>
                {item.name} Travel Guide
              </h1>
              <div style={{ width: "30vw" }}>
                <hr></hr>
                <div
                  style={{
                    display: "flex",
                    justifyContent: "space-between",
                    alignItems: "center",
                    margin: "2vh",
                  }}
                >
                  <h1 style={{ fontSize: "18px", fontWeight: "bold" }}>Book</h1>
                  <h1 style={{ fontSize: "24px" }}>${item.price}</h1>
                  {/* <Button
                    variant="outlined"
                    style={{
                      background: "#297cbb",
                      color: "#dadada",
                      fontWeight: "bold",
                      borderRadius: "20px",
                    }}
                  >
                    Add To Cart
                  </Button> */}
                </div>
                <hr></hr>
                {/* <div
                  style={{
                    display: "flex",
                    justifyContent: "space-between",
                    alignItems: "center",
                    margin: "2vh",
                  }}
                >
                  <h1 style={{ fontSize: "18px", fontWeight: "bold" }}>
                    e-Book
                  </h1>
                  <h1>${Math.round(item.price - 6)}.99</h1> */}
                {/* <Button
                    variant="outlined"
                    style={{
                      background: "#297cbb",
                      color: "#dadada",
                      fontWeight: "bold",
                      borderRadius: "20px",
                    }}
                  >
                    Add To Cart
                  </Button> */}
                {/* </div> */}
                {/* <hr></hr> */}
              </div>
              <div
                style={{
                  width: "25vw",
                }}
              >
                <p style={{ whiteSpace: "pre-line" }}>{item.description}</p>
              </div>
            </div>
          </div>
        );
      })}
    </div>
  );
}
