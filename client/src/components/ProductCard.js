import { Button, Form, Row, Col } from "react-bootstrap";
import { CartContext } from "./CartContext";
import { useContext } from "react";
import { useNavigate } from "react-router-dom";

function ProductCard(props) {
  const navigate = useNavigate();
  const product = props.product;
  const cart = useContext(CartContext);
  const productQuantity = cart.getProductQuantity(product.id);
  console.log(cart.items);

  function myAlert() {
    alert("Please log in");
  }

  if (props.user) {
    return (
      <div
        style={{
          display: "flex",
          flexWrap: "wrap",
          alignItems: "center",
          justifyContent: "center",
          background: "#1c1c1e",
          height: "fit-content",
          border: "none",
          width: "15vw",
          height: "50vh",
        }}
      >
        <div
          style={{
            display: "flex",
            flexDirection: "column",
            alignItems: "center",
            justifyContent: "center",
          }}
        >
          <img
            onClick={() => navigate(`/shop/${product.link}`)}
            src={product.image}
            alt=""
            style={{
              maxHeight: "225px",
              maxWidth: "225px",
              cursor: "pointer",
            }}
          />
          <div
            style={{
              color: "#dadada",
              fontSize: "18px",
              fontWeight: "bold",
            }}
          >
            {product.title}
          </div>
          <h1
            style={{
              fontSize: "12px",
              fontWeight: "bold",
              color: "gray",
            }}
          >
            TRAVEL GUIDE
          </h1>
          <div style={{ color: "#dadada", fontWeight: "bold" }}>
            ${product.price}
          </div>
          {productQuantity > 0 ? (
            <>
              <Form as={Row} style={{ margin: "1vh" }}>
                <Form.Label column="true" sm="6" style={{ color: "#dadada" }}>
                  In Cart: {productQuantity}
                </Form.Label>
                <Col
                  sm="6"
                  style={{
                    display: "flex",
                    flexDirection: "row",
                    justifyContent: "center",
                    alignItems: "center",
                  }}
                >
                  <Button
                    sm="6"
                    onClick={() => cart.addOneToCart(product.id)}
                    className="mx-2"
                    style={{
                      maxHeight: "30px",
                      maxWidth: "30px",
                      display: "flex",
                      justifyContent: "center",
                      alignItems: "center",
                    }}
                  >
                    +
                  </Button>
                  <Button
                    sm="6"
                    onClick={() => cart.removeOneFromCart(product.id)}
                    className="mx-2"
                    style={{
                      maxHeight: "30px",
                      maxWidth: "30px",
                      display: "flex",
                      justifyContent: "center",
                      alignItems: "center",
                    }}
                  >
                    -
                  </Button>
                </Col>
              </Form>
              <Button
                variant="danger"
                onClick={() => cart.deleteFromCart(product.id)}
                className="my-2"
              >
                Remove from cart
              </Button>
            </>
          ) : (
            <Button
              style={{ margin: "1vh", background: "#006699", border: "none" }}
              variant="primary"
              onClick={() => cart.addOneToCart(product.id)}
            >
              Add To Cart
            </Button>
          )}
        </div>
      </div>
    );
  } else {
    return (
      <div
        style={{
          display: "flex",
          flexWrap: "wrap",
          alignItems: "center",
          justifyContent: "center",
          background: "#1c1c1e",
          height: "fit-content",
          border: "none",
          width: "15vw",
          height: "50vh",
        }}
      >
        <div
          style={{
            display: "flex",
            flexDirection: "column",
            alignItems: "center",
            justifyContent: "center",
          }}
        >
          <img
            onClick={() => navigate(`/shop/${product.link}`)}
            src={product.image}
            alt=""
            style={{
              maxHeight: "225px",
              maxWidth: "225px",
              cursor: "pointer",
            }}
          />
          <div
            style={{
              color: "#dadada",
              fontSize: "18px",
              fontWeight: "bold",
            }}
          >
            {product.title}
          </div>
          <h1
            style={{
              fontSize: "12px",
              fontWeight: "bold",
              color: "gray",
            }}
          >
            TRAVEL GUIDE
          </h1>
          <div style={{ color: "#dadada", fontWeight: "bold" }}>
            ${product.price}
          </div>
          {productQuantity > 0 ? (
            <>
              <Form as={Row} style={{ margin: "1vh" }}>
                <Form.Label column="true" sm="6" style={{ color: "#dadada" }}>
                  In Cart: {productQuantity}
                </Form.Label>
                <Col
                  sm="6"
                  style={{
                    display: "flex",
                    flexDirection: "row",
                    justifyContent: "center",
                    alignItems: "center",
                  }}
                >
                  <Button
                    sm="6"
                    onClick={() => cart.addOneToCart(product.id)}
                    className="mx-2"
                    style={{
                      maxHeight: "30px",
                      maxWidth: "30px",
                      display: "flex",
                      justifyContent: "center",
                      alignItems: "center",
                    }}
                  >
                    +
                  </Button>
                  <Button
                    sm="6"
                    onClick={() => cart.removeOneFromCart(product.id)}
                    className="mx-2"
                    style={{
                      maxHeight: "30px",
                      maxWidth: "30px",
                      display: "flex",
                      justifyContent: "center",
                      alignItems: "center",
                    }}
                  >
                    -
                  </Button>
                </Col>
              </Form>
              <Button
                variant="danger"
                onClick={() => cart.deleteFromCart(product.id)}
                className="my-2"
              >
                Remove from cart
              </Button>
            </>
          ) : (
            <Button
              style={{ margin: "1vh", background: "#006699", border: "none" }}
              variant="primary"
              onClick={myAlert}
            >
              Add To Cart
            </Button>
          )}
        </div>
      </div>
    );
  }
}

export default ProductCard;
