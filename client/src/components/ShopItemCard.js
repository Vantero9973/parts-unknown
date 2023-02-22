import { useQuery } from "@tanstack/react-query";
import Axios from "axios";
import { useParams } from "react-router-dom";

export default function ShopItemCard() {
  const { id } = useParams();

  const { data: items, isLoading: itemsLoading } = useQuery(["item"], () => {
    return Axios.get(`/api/shop_items/${id}`).then((res) => res.data);
  });

  if (itemsLoading) {
    return <h1>Loading...</h1>;
  }

  return (
    <div className="shopItemCardContainer">
      {items.map((item) => {
        return (
          <div className="shopItemCardSecondaryContainer">
            <div className="shopItemCardDiv">
              <img src={item.image} alt="" className="shopItemCardImage" />
            </div>
            <div className="shopItemCardSecondaryDiv">
              <h1 className="shopItemCardName">{item.name} Travel Guide</h1>
              <div className="shopItemCardExtraDiv">
                <hr></hr>
                <div className="shopItemCardBookContainer">
                  <h1 className="shopItemCardTitle">Book</h1>
                  <h1 className="shopItemCardPrice">${item.price}</h1>
                </div>
                <hr></hr>
              </div>
              <div className="shopItemCardDescriptionContainer">
                <p className="shopItemCardDescription">{item.description}</p>
              </div>
            </div>
          </div>
        );
      })}
    </div>
  );
}
