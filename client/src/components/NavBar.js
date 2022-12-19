import PublicIcon from "@mui/icons-material/Public";

export default function NavBar() {
  return (
    <div
      style={{
        background: "#1C1C1E",
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
            Unknown
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
                style={{ fontSize: "16px" }}
                className="btn btn-ghost normal-case"
              >
                Shop
              </a>
            </li>
          </ul>
          <div className="dropdown dropdown-end">
            <label tabIndex={0} className="btn btn-ghost btn-circle avatar">
              <div className="w-10 rounded-full">
                <img src="https://placeimg.com/80/80/people" />
              </div>
            </label>
            <ul
              tabIndex={0}
              className="mt-3 p-2 shadow menu menu-compact dropdown-content bg-base-100 rounded-box w-52"
            >
              <li>
                <a className="justify-between">
                  Profile
                  <span className="badge">New</span>
                </a>
              </li>
              <li>
                <a>Settings</a>
              </li>
              <li>
                <a>Logout</a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  );
}
