import { useQuery } from "@tanstack/react-query";
import Axios from "axios";
import { useParams } from "react-router-dom";
// import { useState } from "react";

export default function ContinentsShopPage() {
  const { id } = useParams();
  console.log(id);

  const { data: items, isLoading: itemsLoading } = useQuery(["item"], () => {
    return Axios.get("http://localhost:3000/shop_items").then(
      (res) => res.data
    );
  });

  //   const { data: continents, isLoading: continentsLoading } = useQuery(
  //     ["continent"],
  //     () => {
  //       return Axios.get(`http://localhost:3000/continents/${id}`).then(
  //         (res) => res.data
  //       );
  //     }
  //   );

  if (itemsLoading) {
    return <h1>Loading...</h1>;
  }

  const filteredShop = items?.filter(
    (item) => item.continent_id === parseInt(id)
  );

  return (
    <>
      <div
        style={{
          display: "flex",
          flexWrap: "wrap",
          justifyContent: "center",
        }}
      >
        {filteredShop.map((item) => {
          return (
            <div>
              <img
                src={item.image}
                alt=""
                style={{ height: "30vh", width: "30vh" }}
              />
              <h1>{item.name}</h1>
            </div>
          );
        })}
      </div>
    </>
  );
}
