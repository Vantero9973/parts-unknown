import { useNavigate } from "react-router-dom";

export default function ForumSelector({ countries }) {
  const navigate = useNavigate();

  return (
    <div className="forumSelectorContainer">
      <div>
        <table className="forumSelectorTable">
          <tr className="forumSelectorTableRow">Countries:</tr>
          <tr className="forumSelectorTopicsTableRow"># Topics</tr>
          <tr className="forumSelectorPostsTableRow"># Posts</tr>
        </table>
        {countries.map((country) => {
          return (
            <table className="forumSelectorTable">
              <tr className="forumSelectorSecondaryTableRow">
                <td
                  className="forumSelectorTableData"
                  onClick={() => navigate(`/forums/${country.id}`)}
                >
                  {country.name}
                </td>
              </tr>
              <tr className="forumSelectorTableRowContainer">
                <td>0</td>
              </tr>
              <tr className="forumSelectorTableRowSecondaryContainer">
                <td>0</td>
              </tr>
            </table>
          );
        })}
      </div>
    </div>
  );
}
