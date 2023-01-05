import { Button, Navbar, Modal } from "react-bootstrap";
import { useState, useContext } from "react";
import { CartContext } from "./CartContext";
import CartProduct from "./CartProduct";
import PublicIcon from "@mui/icons-material/Public";
import Popup from "reactjs-popup";
import Login from "./Login";
import SignUp from "./SignUp";
import profPic from "../avatar_default.png";
import Container from "react-bootstrap/Container";
import Nav from "react-bootstrap/Nav";
import NavDropdown from "react-bootstrap/NavDropdown";

function NavbarComponent({ user, setUser }) {
  const cart = useContext(CartContext);

  const [show, setShow] = useState(false);
  const handleClose = () => setShow(false);
  const handleShow = () => setShow(true);

  function handleLogoutClick() {
    fetch("http://localhost:3000/logout", { method: "DELETE" }).then((r) => {
      if (r.ok) {
        setUser(null);
      }
    });
  }

  const checkout = async () => {
    await fetch("http://localhost:6900/checkout", {
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
        <nav
          bg="#1c1c1e"
          expand="lg"
          style={{
            paddingLeft: "10px",
            paddingRight: "20px",
            display: "flex",
            justifyContent: "space-between",
            alignItems: "center",
            height: "8vh",
            borderBottom: "1px solid #3c3c3e",
          }}
        >
          <a
            href="/"
            style={{
              marginRight: "10vw",
              fontSize: "24px",
              fontWeight: "bold",
              color: "#dadada",
              width: "fit-content",
            }}
            className="btn btn-ghost normal-case text-xl"
          >
            Parts
            <PublicIcon
              style={{
                height: "50px",
                width: "50px",
                padding: "5px",
                color: "#dadada",
              }}
            />
            Undefined
          </a>
          {/* <Navbar.Toggle aria-controls="basic-navbar-nav" /> */}
          <div
            style={{
              display: "flex",
              width: "fit-content",
              fontWeight: "bold",
              gap: "1rem",
            }}
          >
            <Nav.Link
              href="/destinations"
              style={{
                color: "#dadada",
                padding: "1vh",
                fontSize: "18px",
              }}
            >
              Destinations
            </Nav.Link>
            <Nav.Link
              href="/stories"
              style={{ color: "#dadada", padding: "1vh", fontSize: "18px" }}
            >
              Stories
            </Nav.Link>
            <Nav.Link
              href="/forum"
              style={{ color: "#dadada", padding: "1vh", fontSize: "18px" }}
            >
              Forum
            </Nav.Link>
            <Nav.Link
              href="/store"
              style={{ color: "#dadada", padding: "1vh", fontSize: "18px" }}
            >
              Store
            </Nav.Link>
            <NavDropdown
              title={
                <img
                  src={profPic}
                  alt=""
                  style={{
                    maxHeight: "50px",
                    maxWidth: "50px",
                    marginLeft: "15px",
                  }}
                />
              }
              id="basic-nav-dropdown"
            >
              <NavDropdown.Item style={{ color: "#1c1c1e" }}>
                <Popup trigger={<div>Login</div>} modal nested>
                  <a>
                    <Login user={user} setUser={setUser} />
                  </a>
                </Popup>
              </NavDropdown.Item>
              <NavDropdown.Item style={{ color: "#1c1c1e" }}>
                <Popup trigger={<div>Sign Up</div>} modal nested>
                  <SignUp user={user} setUser={setUser} />
                </Popup>
              </NavDropdown.Item>
            </NavDropdown>
          </div>
          <Navbar.Toggle />
          <div className="justify-content-end" style={{ width: "fit-content" }}>
            <Button
              style={{ background: "#006699", border: "none" }}
              onClick={handleShow}
            >
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
        <nav
          bg="#1c1c1e"
          expand="lg"
          style={{
            paddingLeft: "10px",
            paddingRight: "20px",
            display: "flex",
            justifyContent: "space-between",
            alignItems: "center",
            height: "8vh",
            borderBottom: "1px solid #3c3c3e",
          }}
        >
          <a
            href="/"
            style={{
              marginRight: "10vw",
              fontSize: "24px",
              fontWeight: "bold",
              color: "#dadada",
              width: "fit-content",
            }}
            className="btn btn-ghost normal-case text-xl"
          >
            Parts
            <PublicIcon
              style={{
                height: "50px",
                width: "50px",
                padding: "5px",
                color: "#dadada",
              }}
            />
            Undefined
          </a>
          {/* <Navbar.Toggle aria-controls="basic-navbar-nav" /> */}
          <div
            style={{
              display: "flex",
              width: "fit-content",
              fontWeight: "bold",
              gap: "1rem",
            }}
          >
            <Nav.Link
              href="/destinations"
              style={{
                color: "#dadada",
                padding: "1vh",
                fontSize: "18px",
              }}
            >
              Destinations
            </Nav.Link>
            <Nav.Link
              href="/stories"
              style={{ color: "#dadada", padding: "1vh", fontSize: "18px" }}
            >
              Stories
            </Nav.Link>
            <Nav.Link
              href="/forum"
              style={{ color: "#dadada", padding: "1vh", fontSize: "18px" }}
            >
              Forum
            </Nav.Link>
            <Nav.Link
              href="/store"
              style={{ color: "#dadada", padding: "1vh", fontSize: "18px" }}
            >
              Store
            </Nav.Link>
            <NavDropdown
              title={
                <img
                  src={user.image}
                  alt=""
                  style={{
                    borderRadius: "50%",
                    maxWidth: "50px",
                    maxHeight: "50px",
                  }}
                />
              }
              id="basic-nav-dropdown"
            >
              <h1
                style={{
                  fontSize: "20px",
                  fontWeight: "bold",
                  textAlign: "center",
                }}
              >
                Welcome, {user.first_name}!
              </h1>
              <NavDropdown.Item>
                <div onClick={handleLogoutClick}>Logout</div>
              </NavDropdown.Item>
            </NavDropdown>
          </div>
          <Navbar.Toggle />
          <div className="justify-content-end" style={{ width: "fit-content" }}>
            <Button onClick={handleShow}>Cart ({productsCount} Items)</Button>
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
      // <>
      //   <Navbar bg="#1c1c1e" expand="lg">
      //     <Navbar.Brand href="/">
      //       <div>
      //         <a
      //           href="/"
      //           style={{
      //             marginRight: "10vw",
      //             fontSize: "24px",
      //             fontWeight: "bold",
      //             color: "#dadada",
      //           }}
      //           className="btn btn-ghost normal-case text-xl"
      //         >
      //           Parts
      //           <PublicIcon
      //             style={{ height: "50px", width: "50px", padding: "5px" }}
      //           />
      //           Undefined
      //         </a>
      //       </div>
      //     </Navbar.Brand>
      //     {/* <Navbar.Toggle aria-controls="basic-navbar-nav" /> */}
      //     <Navbar.Collapse id="basic-navbar-nav">
      //       <Nav className="me-auto">
      //         <Nav.Link href="/destinations" style={{ color: "#dadada" }}>
      //           Destinations
      //         </Nav.Link>
      //         <Nav.Link href="/stories" style={{ color: "#dadada" }}>
      //           Stories
      //         </Nav.Link>
      //         <Nav.Link href="/forum" style={{ color: "#dadada" }}>
      //           Forum
      //         </Nav.Link>
      //         <Nav.Link href="/store" style={{ color: "#dadada" }}>
      //           Store
      //         </Nav.Link>
      //         <NavDropdown
      //           title={
      //             <img
      //               src={user.image}
      //               alt=""
      //               style={{
      //                 borderRadius: "50%",
      //                 maxWidth: "50px",
      //                 maxHeight: "50px",
      //               }}
      //             />
      //           }
      //           id="basic-nav-dropdown"
      //         >
      //           <NavDropdown.Item>
      //             <h1 style={{ fontSize: "20px", fontWeight: "bold" }}>
      //               Welcome, {user.first_name}!
      //             </h1>
      //           </NavDropdown.Item>
      //           <NavDropdown.Item>
      //             <div onClick={handleLogoutClick}>Logout</div>
      //           </NavDropdown.Item>
      //         </NavDropdown>
      //       </Nav>
      //     </Navbar.Collapse>
      //     <Navbar.Toggle />
      //     <Navbar.Collapse className="justify-content-end">
      //       <Button onClick={handleShow}>Cart ({productsCount} Items)</Button>
      //     </Navbar.Collapse>
      //   </Navbar>
      //   <Modal show={show} onHide={handleClose}>
      //     <Modal.Header closeButton>
      //       <Modal.Title>Shopping Cart</Modal.Title>
      //     </Modal.Header>
      //     <Modal.Body>
      //       {productsCount > 0 ? (
      //         <>
      //           <p>Items in your cart:</p>
      //           {cart.items.map((currentProduct, idx) => (
      //             <CartProduct
      //               key={idx}
      //               id={currentProduct.id}
      //               quantity={currentProduct.quantity}
      //             ></CartProduct>
      //           ))}

      //           <h1>Total: {cart.getTotalCost().toFixed(2)}</h1>

      //           <Button variant="success" onClick={checkout}>
      //             Purchase items!
      //           </Button>
      //         </>
      //       ) : (
      //         <h1>There are no items in your cart!</h1>
      //       )}
      //     </Modal.Body>
      //   </Modal>
      // </>
    );
  }
}

export default NavbarComponent;

{
  /* <div style={{ display: "flex", alignItems: "center" }}>
<div className="dropdown dropdown-end">
  <label tabIndex={0} className="btn btn-ghost btn-circle">
    <div>
      <img
        src={profPic}
        alt=""
        style={{ maxHeight: "50px", maxWidth: "50px" }}
      />
    </div>
  </label>
</div>
</div> */
}

{
  /* <Navbar expand="sm">
        <Navbar.Toggle />
        <Navbar.Collapse className="justify-content-end">
          <Button onClick={handleShow}>Cart ({productsCount} Items)</Button>
        </Navbar.Collapse>
      </Navbar>
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
      </Modal> */
}
