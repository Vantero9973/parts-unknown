import { productsArray } from "./productsStore";
import ProductCard from "./ProductCard";

function Store() {
  return (
    <>
      <div
        style={{
          display: "flex",
          flexWrap: "wrap",
          justifyContent: "center",
          alignItems: "center",
          paddingTop: "5vh",
          paddingBottom: "5vh",
        }}
      >
        {productsArray.map((product, idx) => (
          <div key={idx}>
            <ProductCard product={product} />
          </div>
        ))}
      </div>
    </>
  );
}

export default Store;
