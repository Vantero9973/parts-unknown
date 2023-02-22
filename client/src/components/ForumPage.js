import { useQuery } from "@tanstack/react-query";
import Axios from "axios";
import { useParams, useNavigate } from "react-router-dom";
import AddNewPost from "./AddNewPost";

export default function ForumPage({ user }) {
  const { id } = useParams();
  const navigate = useNavigate();

  const { data: forums, isLoading: forumsLoading } = useQuery(["forum"], () => {
    return Axios.get(`/api/forums/${id}`).then((res) => res.data);
  });

  const { data: posts, isLoading: postsLoading } = useQuery(["post"], () => {
    return Axios.get(`/api/posts/${id}`).then((res) => res.data);
  });

  if (forumsLoading || postsLoading) {
    return (
      <div className="isLoadingMessage">
        <h1 className="isLoadingTitle">Loading...</h1>
      </div>
    );
  }

  return (
    <>
      <div className="forumPageContainer">
        {forums.map((forum) => {
          return (
            <div className="forumPageDiv">
              <h1 className="forumPageTitle">{forum.country_name}</h1>
              <img src={forum.flag} alt="flag" className="forumPageImage" />
              <AddNewPost user={user} />
            </div>
          );
        })}
      </div>
      <div className="forumPageSecondaryContainer">
        <table className="forumPageTable">
          <tr className="forumPageTableRow">Forum</tr>
          <tr className="forumPageSecondaryTableRow">Topic</tr>
          <tr className="forumPageTableDateRow">Date</tr>
        </table>
        {posts.map((post) => {
          return (
            <table className="forumPageSecondaryTable">
              <tr className="forumPageTableTopicRow">{post.topic}</tr>
              <tr
                className="forumPageTableTitleRow"
                onClick={() => navigate(`/posts/${post.id}`)}
              >
                {post.title}
              </tr>
              <tr className="forumPageTableSecondaryDateRow">{post.date}</tr>
            </table>
          );
        })}
      </div>
    </>
  );
}
