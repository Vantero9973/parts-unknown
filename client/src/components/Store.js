import { productsArray } from "./productsStore";
import ProductCard from "./ProductCard";

function Store({ user }) {
  return (
    <>
      {/* <h1
        style={{
          display: "flex",
          justifyContent: "center",
          alignItems: "center",
          paddingTop: "5vh",
          color: "#dadada",
          fontSize: "32px",
        }}
      >
        Browse Travel Guides
      </h1> */}
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
