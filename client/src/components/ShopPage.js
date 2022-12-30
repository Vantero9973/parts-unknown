import React from "react";
import { useNavigate } from "react-router-dom";
import { ScrollMenu } from "react-horizontal-scrolling-menu";
import ShopCard from "./ShopCard";
import { useQuery } from "@tanstack/react-query";
import Axios from "axios";

const getItems = () =>
  Array(1)
    .fill(0)
    .map((_, ind) => ({ id: `element-${ind}` }));

export default function ShopPage() {
  const [items, setItems] = React.useState(getItems);
  const [selected, setSelected] = React.useState([]);
  const navigate = useNavigate();

  const isItemSelected = (id) => !!selected.find((el) => el === id);

  const { data: continents, isLoading } = useQuery(["continent"], () => {
    return Axios.get("http://localhost:3000/continents").then(
      (res) => res.data
    );
  });

  if (isLoading) {
    return <h1>Loading...</h1>;
  }

  return (
    <>
      <div style={{ marginTop: "10vh", marginBottom: "10vh" }}>
        <ScrollMenu>
          {items.map(({ id }) => (
            <ShopCard
              itemId={id} // NOTE: itemId is required for track items
              title={id}
              key={id}
              selected={isItemSelected(id)}
            />
          ))}
        </ScrollMenu>
      </div>
      <div
        style={{
          width: "100vw",
          display: "flex",
          flexDirection: "column",
          justifyContent: "center",
          alignItems: "center",
        }}
      >
        <h1 style={{ fontSize: "24px", fontWeight: "bold" }}>
          Browse by Continent
        </h1>
        <div
          style={{
            display: "flex",
            flexWrap: "wrap",
            justifyContent: "center",
            alignItems: "center",
            marginBottom: "5vh",
            width: "70vw",
          }}
        >
          {continents.map((continent) => {
            return (
              <div
                onClick={() => navigate(`/continents/${continent.id}`)}
                style={{
                  width: "30vh",
                  height: "30vh",
                  backgroundImage: `url(${continent.image})`,
                  backgroundSize: "cover",
                  backgroundRepeat: "no-repeat",
                  backgroundPosition: "center",
                  textShadow: "#000 1px 0 5px",
                  display: "flex",
                  justifyContent: "center",
                  alignItems: "center",
                  fontSize: "24px",
                  color: "white",
                  fontWeight: "bold",
                  margin: "2vh",
                  borderRadius: "5px",
                  cursor: "pointer",
                }}
              >
                {continent.name}
              </div>
            );
          })}
        </div>
      </div>
    </>
  );
}
