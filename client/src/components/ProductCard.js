import { Card, Button, Form, Row, Col } from "react-bootstrap";
import { CartContext } from "./CartContext";
import { useContext } from "react";

function ProductCard(props) {
  // props.product is the product we are selling
  const product = props.product;
  const cart = useContext(CartContext);
  const productQuantity = cart.getProductQuantity(product.id);
  console.log(cart.items);
  return (
    <Card
      style={{
        display: "flex",
        flexDirection: "column",
        alignItems: "center",
        justifyContent: "center",
        background: "#1c1c1e",
        width: "20vw",
        height: "25vw",
      }}
    >
      <Card.Body
        style={{
          display: "flex",
          flexDirection: "column",
          alignItems: "center",
          justifyContent: "center",
        }}
      >
        <img
          src={product.image}
          alt=""
          style={{ height: "25vh", width: "20vh" }}
        />
        <Card.Title
          style={{
            color: "#dadada",
            fontSize: "18px",
            fontWeight: "bold",
          }}
        >
          {product.title}
        </Card.Title>
        <h1
          style={{
            fontSize: "12px",
            fontWeight: "bold",
            color: "gray",
          }}
        >
          TRAVEL GUIDE
        </h1>
        <Card.Text>${product.price}</Card.Text>
        {productQuantity > 0 ? (
          <>
            <Form as={Row}>
              <Form.Label column="true" sm="6">
                In Cart: {productQuantity}
              </Form.Label>
              <Col sm="6">
                <Button
                  sm="6"
                  onClick={() => cart.addOneToCart(product.id)}
                  className="mx-2"
                >
                  +
                </Button>
                <Button
                  sm="6"
                  onClick={() => cart.removeOneFromCart(product.id)}
                  className="mx-2"
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
            variant="primary"
            onClick={() => cart.addOneToCart(product.id)}
          >
            Add To Cart
          </Button>
        )}
      </Card.Body>
    </Card>
  );
}

export default ProductCard;
