export default function ForumSearch({ setSearch }) {
  let handleChange = (e) => {
    setSearch(e.target.value);
  };

  return (
    <div
      style={{
        background: "#1C1C1E",
        display: "flex",
        justifyContent: "center",
        alignItems: "center",
      }}
    >
      <input
        style={{
          height: "4vh",
          width: "15vw",
          border: "1px solid #dadada",
          borderRadius: "20px",
          padding: "20px",
          marginBottom: "5vh",
        }}
        className="prompt"
        placeholder="Search Countries"
        onChange={handleChange}
      />
    </div>
  );
}
