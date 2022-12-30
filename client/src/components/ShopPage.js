import React from "react";
import { useNavigate } from "react-router-dom";
import ShopCard from "./ShopCard";
import { useQuery } from "@tanstack/react-query";
import Axios from "axios";

export default function ShopPage() {
  const navigate = useNavigate();

  const { data: continents, isLoading: continentsLoading } = useQuery(
    ["continent"],
    () => {
      return Axios.get("http://localhost:3000/continents").then(
        (res) => res.data
      );
    }
  );

  const { data: items, isLoading: itemsLoading } = useQuery(["item"], () => {
    return Axios.get("http://localhost:3000/shop_items").then(
      (res) => res.data
    );
  });

  if (continentsLoading || itemsLoading) {
    return <h1>Loading...</h1>;
  }

  return (
    <div
      style={{
        width: "100vw",
        display: "flex",
        alignItems: "center",
        justifyContent: "center",
        flexDirection: "column",
      }}
    >
      <div
        class="overflow-scroll"
        style={{
          width: "80vw",
          height: "80vh",
          display: "flex",
          flexWrap: "wrap",
          justifyContent: "center",
          alignItems: "center",
          background: "#2c2c2e",
          margin: "10vh",
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
                style={{
                  color: "#dadada",
                  fontSize: "18px",
                  fontWeight: "bold",
                }}
              >
                {item.name}
              </h1>
              <h1
                style={{ fontSize: "12px", fontWeight: "bold", color: "gray" }}
              >
                TRAVEL GUIDE
              </h1>
            </div>
          );
        })}
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
    </div>
  );
}
