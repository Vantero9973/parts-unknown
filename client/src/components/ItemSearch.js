export default function ItemSearch({ setSearch }) {
  let handleChange = (e) => {
    setSearch(e.target.value);
  };

  return (
    <div className="itemSearchContainer">
      <input
        id="itemSearchInput"
        className="prompt"
        placeholder="Search Travel Guides"
        onChange={handleChange}
      />
    </div>
  );
}
