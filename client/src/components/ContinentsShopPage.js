import { useQuery } from "@tanstack/react-query";
import Axios from "axios";
import { useNavigate, useParams } from "react-router-dom";
// import { useState } from "react";

export default function ContinentsShopPage() {
  const { id } = useParams();
  const navigate = useNavigate();
  console.log(id);

  const { data: items, isLoading: itemsLoading } = useQuery(["item"], () => {
    return Axios.get("/api/shop_items").then(
      (res) => res.data
    );
  });

  const { data: continents, isLoading: continentsLoading } = useQuery(
    ["continent"],
    () => {
      return Axios.get(`/api/continents/${id}`).then(
        (res) => res.data
      );
    }
  );

  const continentName = (
    <div>
      {continents?.map((continent) => {
        return (
          <div>
            <h1 style={{ fontSize: "32px", fontWeight: "bold" }}>
              {continent.name}
            </h1>
          </div>
        );
      })}
    </div>
  );

  //   const { data: continents, isLoading: continentsLoading } = useQuery(
  //     ["continent"],
  //     () => {
  //       return Axios.get(`/api/continents/${id}`).then(
  //         (res) => res.data
  //       );
  //     }
  //   );

  if (itemsLoading || continentsLoading) {
    return <h1>Loading...</h1>;
  }

  const filteredShop = items?.filter(
    (item) => item.continent_id === parseInt(id)
  );

  return (
    <div
      style={{
        padding: "5vh",
        display: "flex",
        flexDirection: "column",
        justifyContent: "center",
        alignItems: "center",
      }}
    >
      {continentName}
      <div
        style={{
          display: "flex",
          flexWrap: "wrap",
          justifyContent: "center",
          padding: "5vh",
        }}
      >
        {filteredShop.map((item) => {
          return (
            <div
              style={{ cursor: "pointer" }}
              onClick={() => navigate(`/shop/${item.id}`)}
            >
              <img
                src={item.image}
                alt=""
                style={{ maxHeight: "30vh", maxWidth: "30vh" }}
              />
              <h1>{item.name}</h1>
            </div>
          );
        })}
      </div>
    </div>
  );
}
