import "./App.css";
import { Route, Routes } from "react-router-dom";
import NavBar from "./NavBar";
import LandingPage from "./LandingPage";
import DestinationsPage from "./DestinationsPage";

function App() {
  return (
    <>
      <NavBar />
      <div style={{ minHeight: "92vh", background: "#1C1C1E" }}>
        <Routes>
          <Route path="/" element={<LandingPage />} />
          <Route path="/destinations" element={<DestinationsPage />} />
        </Routes>
      </div>
    </>
  );
}

export default App;
