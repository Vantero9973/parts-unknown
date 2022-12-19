function Search({ setSearch }) {
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
        marginTop: "10vh",
      }}
    >
      <input
        style={{
          height: "5vh",
          width: "25vw",
          fontSize: "20px",
          border: "1px solid #dadada",
          borderRadius: "20px",
          padding: "20px",
        }}
        className="prompt"
        placeholder="Search Stories"
        onChange={handleChange}
      />
    </div>
  );
}

export default Search;
