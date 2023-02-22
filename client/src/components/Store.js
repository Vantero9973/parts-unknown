import { productsArray } from "./productsStore";
import ProductCard from "./ProductCard";

function Store({ user }) {
  return (
    <>
      <div className="storeContainer">
        {productsArray.map((product, idx) => (
          <div key={idx}>
            <ProductCard product={product} user={user} />
          </div>
        ))}
      </div>
    </>
  );
}

export default Store;
