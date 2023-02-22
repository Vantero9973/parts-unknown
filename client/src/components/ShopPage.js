import { useState } from "react";
import { useNavigate } from "react-router-dom";
import { useQuery } from "@tanstack/react-query";
import Axios from "axios";
import ItemSearch from "./ItemSearch";
import ShopItems from "./ShopItems";
import Pagination from "./Pagination.js";
import { PacmanLoader } from "react-spinners";

export default function ShopPage() {
  const [currentPage, setCurrentPage] = useState(1);
  const [postsPerPage, setPostsPerPage] = useState(21);
  const [search, setSearch] = useState("");
  const navigate = useNavigate();

  const { data: continents, isLoading: continentsLoading } = useQuery(
    ["continent"],
    () => {
      return Axios.get("/api/continents").then((res) => res.data);
    }
  );

  const { data: items, isLoading: itemsLoading } = useQuery(["item"], () => {
    return Axios.get("/api/shop_items").then((res) => res.data);
  });

  const lastPostIndex = currentPage * postsPerPage;
  const firstPostIndex = lastPostIndex - postsPerPage;
  const currentPosts = items?.slice(firstPostIndex, lastPostIndex);

  if (continentsLoading) {
    return <h1>Loading...</h1>;
  }

  if (itemsLoading) {
    return (
      <div className="itemsLoading">
        <PacmanLoader color="yellow" size="50" />
      </div>
    );
  }

  return (
    <div className="shopPageContainer">
      <ItemSearch setSearch={setSearch} />
      <div className="shopPageSecondaryContainer">
        <div className="shopPageDiv">
          <div className="shopPageSecondaryDiv">
            {continents.map((continent) => {
              return (
                <div
                  onClick={() => navigate(`/continents/${continent.id}`)}
                  className="shopPageContinentContainer"
                >
                  <h1 className="shopPageName">{continent.name}</h1>
                </div>
              );
            })}
          </div>
        </div>
        <div className="shopPageShopItemsContainer" />
        <ShopItems items={currentPosts} search={search} />
      </div>
      <Pagination
        totalPosts={items.length}
        postsPerPage={postsPerPage}
        setCurrentPage={setCurrentPage}
        currentPage={currentPage}
      />
    </div>
  );
}
