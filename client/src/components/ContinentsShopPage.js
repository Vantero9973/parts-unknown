import { useQuery } from "@tanstack/react-query";
import Axios from "axios";
import { useNavigate, useParams } from "react-router-dom";

export default function ContinentsShopPage() {
  const { id } = useParams();
  const navigate = useNavigate();
  console.log(id);

  const { data: items, isLoading: itemsLoading } = useQuery(["item"], () => {
    return Axios.get("/api/shop_items").then((res) => res.data);
  });

  const { data: continents, isLoading: continentsLoading } = useQuery(
    ["continent"],
    () => {
      return Axios.get(`/api/continents/${id}`).then((res) => res.data);
    }
  );

  const continentName = (
    <div>
      {continents?.map((continent) => {
        return (
          <div>
            <h1 className="continentsShopName">{continent.name}</h1>
          </div>
        );
      })}
    </div>
  );

  if (itemsLoading || continentsLoading) {
    return <h1>Loading...</h1>;
  }

  const filteredShop = items?.filter(
    (item) => item.continent_id === parseInt(id)
  );

  return (
    <div className="continentsShopContainer">
      {continentName}
      <div className="continentsShopDiv">
        {filteredShop.map((item) => {
          return (
            <div
              className="cursorPointer"
              onClick={() => navigate(`/shop/${item.id}`)}
            >
              <img src={item.image} alt="" className="continentsShopImage" />
              <h1>{item.name}</h1>
            </div>
          );
        })}
      </div>
    </div>
  );
}
