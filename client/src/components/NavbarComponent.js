import { Button, Navbar, Modal } from "react-bootstrap";
import { useState, useContext } from "react";
import { CartContext } from "./CartContext";
import CartProduct from "./CartProduct";
import PublicIcon from "@mui/icons-material/Public";
import Popup from "reactjs-popup";
import Login from "./Login";
import SignUp from "./SignUp";
import profPic from "../avatar_default.png";
import NavDropdown from "react-bootstrap/NavDropdown";
import { Link } from "react-router-dom";
import config from "../config";

function NavbarComponent({ user, setUser }) {
  const cart = useContext(CartContext);

  const [show, setShow] = useState(false);
  const handleClose = () => setShow(false);
  const handleShow = () => setShow(true);

  function handleLogoutClick() {
    fetch("/api/logout", { method: "DELETE" }).then((r) => {
      if (r.ok) {
        setUser(null);
      }
    });
  }

  const checkout = async () => {
    await fetch(`https://${config.stripeUrl}/checkout`, {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({ items: cart.items }),
    })
      .then((response) => {
        return response.json();
      })
      .then((response) => {
        if (response.url) {
          window.location.assign(response.url); // Forwarding user to Stripe
        }
      });
  };

  const productsCount = cart.items.reduce(
    (sum, product) => sum + product.quantity,
    0
  );

  if (!user) {
    return (
      <>
        <nav bg="#1c1c1e" expand="lg" className="navbarNav">
          <Link
            to="/"
            id="navbarLink"
            className="btn btn-ghost normal-case text-xl"
          >
            Parts
            <PublicIcon className="partsUndefinedIcon" />
            Undefined
          </Link>
          <div className="navbarContainer">
            <Link to="/destinations" className="navbarSecondaryLink">
              Destinations
            </Link>
            <Link to="/stories" className="navbarSecondaryLink">
              Stories
            </Link>
            <Link to="/forum" className="navbarSecondaryLink">
              Forum
            </Link>
            <Link to="/store" className="navbarSecondaryLink">
              Store
            </Link>
            <NavDropdown
              title={<img src={profPic} alt="" className="navbarImage" />}
              id="basic-nav-dropdown"
            >
              <NavDropdown.Item className="navbarDropdownItem">
                <Popup trigger={<div>Login</div>} modal nested>
                  <div>
                    <Login user={user} setUser={setUser} />
                  </div>
                </Popup>
              </NavDropdown.Item>
              <NavDropdown.Item className="navbarDropdownItem">
                <Popup trigger={<div>Sign Up</div>} modal nested>
                  <SignUp user={user} setUser={setUser} />
                </Popup>
              </NavDropdown.Item>
            </NavDropdown>
          </div>
          <Navbar.Toggle />
          <div className="justify-content-end" id="navbarSecondaryDiv">
            <Button className="navbarButton" onClick={handleShow}>
              Cart ({productsCount} Items)
            </Button>
          </div>
        </nav>
        <Modal show={show} onHide={handleClose}>
          <Modal.Header closeButton>
            <Modal.Title>Shopping Cart</Modal.Title>
          </Modal.Header>
          <Modal.Body>
            {productsCount > 0 ? (
              <>
                <p>Items in your cart:</p>
                {cart.items.map((currentProduct, idx) => (
                  <CartProduct
                    key={idx}
                    id={currentProduct.id}
                    quantity={currentProduct.quantity}
                  ></CartProduct>
                ))}

                <h1>Total: {cart.getTotalCost().toFixed(2)}</h1>

                <Button variant="success" onClick={checkout}>
                  Purchase items!
                </Button>
              </>
            ) : (
              <h1>There are no items in your cart!</h1>
            )}
          </Modal.Body>
        </Modal>
      </>
    );
  } else {
    return (
      <>
        <nav bg="#1c1c1e" expand="lg" className="navbarNav">
          <Link
            to="/"
            id="navbarLink"
            className="btn btn-ghost normal-case text-xl"
          >
            Parts
            <PublicIcon className="partsUndefinedIcon" />
            Undefined
          </Link>
          <div className="navbarContainer">
            <Link to="/destinations" className="navbarSecondaryLink">
              Destinations
            </Link>
            <Link to="/stories" className="navbarSecondaryLink">
              Stories
            </Link>
            <Link to="/forum" className="navbarSecondaryLink">
              Forum
            </Link>
            <Link to="/store" className="navbarSecondaryLink">
              Store
            </Link>
            <NavDropdown
              title={
                <img src={user.image} alt="" className="navbarSecondaryImage" />
              }
              id="basic-nav-dropdown"
            >
              <h1 className="navbarWelcome">Welcome, {user.first_name}!</h1>
              <NavDropdown.Item>
                <div onClick={handleLogoutClick}>Logout</div>
              </NavDropdown.Item>
            </NavDropdown>
          </div>
          <Navbar.Toggle />
          <div className="justify-content-end" id="navbarSecondaryDiv">
            <Button onClick={handleShow} className="navbarButton">
              Cart ({productsCount} Items)
            </Button>
          </div>
        </nav>
        <Modal show={show} onHide={handleClose}>
          <Modal.Header closeButton>
            <Modal.Title>Shopping Cart</Modal.Title>
          </Modal.Header>
          <Modal.Body>
            {productsCount > 0 ? (
              <>
                <p>Items in your cart:</p>
                {cart.items.map((currentProduct, idx) => (
                  <CartProduct
                    key={idx}
                    id={currentProduct.id}
                    quantity={currentProduct.quantity}
                  ></CartProduct>
                ))}

                <h1>Total: {cart.getTotalCost().toFixed(2)}</h1>

                <Button variant="success" onClick={checkout}>
                  Purchase items!
                </Button>
              </>
            ) : (
              <h1>There are no items in your cart!</h1>
            )}
          </Modal.Body>
        </Modal>
      </>
    );
  }
}

export default NavbarComponent;
