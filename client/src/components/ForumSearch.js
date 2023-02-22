export default function ForumSearch({ setSearch }) {
  let handleChange = (e) => {
    setSearch(e.target.value);
  };

  return (
    <div className="forumSearchContainer">
      <input
        id="forumSearchInput"
        className="prompt"
        placeholder="Search Countries"
        onChange={handleChange}
      />
    </div>
  );
}
