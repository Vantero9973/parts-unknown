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
      <div className="productCardContainer">
        <div className="productCardSecondaryContainer">
          <img
            onClick={() => navigate(`/shop/${product.link}`)}
            src={product.image}
            alt=""
            className="productCardImage"
          />
          <div className="productCardTitle">{product.title}</div>
          <h1 className="productCardH">TRAVEL GUIDE</h1>
          <div className="productCardPrice">${product.price}</div>
          {productQuantity > 0 ? (
            <>
              <Form as={Row} className="productCardForm">
                <Form.Label
                  column="true"
                  sm="6"
                  className="productCardFormLabel"
                >
                  In Cart: {productQuantity}
                </Form.Label>
                <Col sm="6" className="productCardColumn">
                  <Button
                    sm="6"
                    onClick={() => cart.addOneToCart(product.id)}
                    className="mx-2"
                    id="productCardButton"
                  >
                    +
                  </Button>
                  <Button
                    sm="6"
                    onClick={() => cart.removeOneFromCart(product.id)}
                    className="mx-2"
                    id="productCardButton"
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
              className="productCardSecondaryButton"
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
      <div className="productCardContainer">
        <div className="productCardSecondaryContainer">
          <img
            onClick={() => navigate(`/shop/${product.link}`)}
            src={product.image}
            alt=""
            className="productCardImage"
          />
          <div className="productCardTitle">{product.title}</div>
          <h1 className="productCardH">TRAVEL GUIDE</h1>
          <div className="productCardPrice">${product.price}</div>
          {productQuantity > 0 ? (
            <>
              <Form as={Row} className="productCardForm">
                <Form.Label
                  column="true"
                  sm="6"
                  className="productCardFormLabel"
                >
                  In Cart: {productQuantity}
                </Form.Label>
                <Col sm="6" className="productCardColumn">
                  <Button
                    sm="6"
                    onClick={() => cart.addOneToCart(product.id)}
                    className="mx-2"
                    id="productCardButton"
                  >
                    +
                  </Button>
                  <Button
                    sm="6"
                    onClick={() => cart.removeOneFromCart(product.id)}
                    className="mx-2"
                    id="productCardButton"
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
              className="productCardSecondaryButton"
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
