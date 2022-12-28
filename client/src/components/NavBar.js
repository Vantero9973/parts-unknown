import PublicIcon from "@mui/icons-material/Public";
import Popup from "reactjs-popup";
import Login from "./Login";
import SignUp from "./SignUp";
import profPic from "../avatar_default.png";

export default function NavBar({ user, setUser }) {
  function handleLogoutClick() {
    fetch("http://localhost:3000/logout", { method: "DELETE" }).then((r) => {
      if (r.ok) {
        setUser(null);
      }
    });
  }

  if (!user) {
    return (
      <div
        style={{
          background: "#1C1C1E",
          borderBottom: "1px solid #3c3c3e",
        }}
      >
        <div
          style={{
            display: "flex",
            justifyContent: "space-between",
            padding: "10px",
          }}
        >
          <div>
            <a
              href="/"
              style={{
                marginRight: "10vw",
                fontSize: "24px",
                fontWeight: "bold",
              }}
              className="btn btn-ghost normal-case text-xl"
            >
              Parts
              <PublicIcon
                style={{ height: "50px", width: "50px", padding: "5px" }}
              />
              Undefined
            </a>
          </div>
          <div style={{ display: "flex", alignItems: "center" }}>
            <ul className="menu menu-horizontal px-5">
              <li>
                <a
                  href="/destinations"
                  style={{ fontSize: "16px" }}
                  className="btn btn-ghost normal-case"
                >
                  Destinations
                </a>
              </li>
              <li>
                <a
                  href="/stories"
                  style={{ fontSize: "16px" }}
                  className="btn btn-ghost normal-case"
                >
                  Stories
                </a>
              </li>
              <li>
                <a
                  href="/forum"
                  style={{ fontSize: "16px" }}
                  className="btn btn-ghost normal-case"
                >
                  Forum
                </a>
              </li>
              <li>
                <a
                  href="/shop"
                  style={{ fontSize: "16px" }}
                  className="btn btn-ghost normal-case"
                >
                  Shop
                </a>
              </li>
            </ul>
            <div className="dropdown dropdown-end">
              <label tabIndex={0} className="btn btn-ghost btn-circle">
                <div>
                  <img src={profPic} alt="" />
                </div>
              </label>
              <ul
                tabIndex={0}
                className="mt-3 p-2 shadow menu menu-compact dropdown-content bg-base-100 rounded-box w-52"
                style={{ width: "8vw", fontSize: "20px" }}
              >
                {/* <li>
                <a className="justify-between">
                  Profile
                  <span className="badge">New</span>
                </a>
              </li> */}
                <li>
                  <Popup trigger={<div>Login</div>} modal nested>
                    <a>
                      <Login user={user} setUser={setUser} />
                    </a>
                  </Popup>
                </li>
                <li>
                  <Popup trigger={<div>Sign Up</div>} modal nested>
                    <SignUp user={user} setUser={setUser} />
                  </Popup>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    );
  } else {
    return (
      <div
        style={{
          background: "#1C1C1E",
          borderBottom: "1px solid #3c3c3e",
        }}
      >
        <div
          style={{
            display: "flex",
            justifyContent: "space-between",
            padding: "10px",
          }}
        >
          <div>
            <a
              href="/"
              style={{
                marginRight: "10vw",
                fontSize: "24px",
                fontWeight: "bold",
              }}
              className="btn btn-ghost normal-case text-xl"
            >
              Parts
              <PublicIcon
                style={{ height: "50px", width: "50px", padding: "5px" }}
              />
              Undefined
            </a>
          </div>
          <div style={{ display: "flex", alignItems: "center" }}>
            <ul className="menu menu-horizontal px-5">
              <li>
                <a
                  href="/destinations"
                  style={{ fontSize: "16px" }}
                  className="btn btn-ghost normal-case"
                >
                  Destinations
                </a>
              </li>
              <li>
                <a
                  href="/stories"
                  style={{ fontSize: "16px" }}
                  className="btn btn-ghost normal-case"
                >
                  Stories
                </a>
              </li>
              <li>
                <a
                  href="/forum"
                  style={{ fontSize: "16px" }}
                  className="btn btn-ghost normal-case"
                >
                  Forum
                </a>
              </li>
              <li>
                <a
                  href="/shop"
                  style={{ fontSize: "16px" }}
                  className="btn btn-ghost normal-case"
                >
                  Shop
                </a>
              </li>
            </ul>
            <div className="dropdown dropdown-end">
              <label tabIndex={0} className="btn btn-ghost btn-circle">
                <div>
                  <img
                    src={user.image}
                    alt=""
                    style={{ borderRadius: "50% " }}
                  />
                </div>
              </label>
              <ul
                tabIndex={0}
                className="mt-3 p-2 shadow menu menu-compact dropdown-content bg-base-100 rounded-box w-52"
                style={{
                  display: "flex",
                  alignItems: "center",
                  fontSize: "20px",
                }}
              >
                <div>
                  <h1>Welcome, {user.first_name}!</h1>
                </div>
                <li>
                  <a onClick={handleLogoutClick}>Logout</a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    );
  }
}
