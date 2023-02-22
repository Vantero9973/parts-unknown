function Search({ setSearch }) {
  let handleChange = (e) => {
    setSearch(e.target.value);
  };

  return (
    <div className="searchContainer">
      <input
        id="searchInput"
        className="prompt"
        placeholder="Search Stories"
        onChange={handleChange}
      />
    </div>
  );
}

export default Search;
