import { productsArray } from "./productsStore";
import ProductCard from "./ProductCard";

function Store({ user }) {
  return (
    <>
      <div
        style={{
          display: "flex",
          flexWrap: "wrap",
          justifyContent: "center",
          alignItems: "center",
          paddingBottom: "5vh",
        }}
      >
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
