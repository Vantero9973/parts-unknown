import { useNavigate } from "react-router-dom";

export default function ShopItems({ items, search }) {
  const navigate = useNavigate();

  const searchItems = items?.filter((country) =>
    country.name.toLowerCase().includes(search.toLowerCase())
  );

  return (
    <div className="shopItemsContainer">
      {searchItems.map((item) => {
        console.log(item);
        return (
          <div
            className="shopItemsSecondaryContainer"
            onClick={() => navigate(`/shop/${item.id}`)}
          >
            <img src={item.image} alt="" className="shopItemsImage" />
            <h1 className="shopItemsName">{item.name}</h1>
            <h1 className="shopItemsTitle">TRAVEL GUIDE</h1>
          </div>
        );
      })}
    </div>
  );
}
