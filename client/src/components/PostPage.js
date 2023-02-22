import { useQuery } from "@tanstack/react-query";
import Axios from "axios";
import { useState } from "react";
import { useNavigate, useParams } from "react-router-dom";
import AddNewComment from "./AddNewComment";
import default_avatar from "../avatar_default.png";
import Button from "@mui/material/Button";
import DeleteIcon from "@mui/icons-material/Delete";

export default function PostPage({ user }) {
  const [deleteComments, setDeleteComments] = useState();
  const { id } = useParams();
  const navigate = useNavigate();

  const { data: posts, isLoading: postsLoading } = useQuery(["post"], () => {
    return Axios.get(`/api/postpage/${id}`).then((res) => res.data);
  });

  const { data: comments, isLoading: commentsLoading } = useQuery(
    ["comment"],
    () => {
      return Axios.get(`/api/forum_comments/${id}`).then((res) => res.data);
    }
  );

  function handleDelete(id) {
    fetch(`/api/forum_comments/${id}`, {
      method: "DELETE",
    }).then((r) => {
      if (r.ok) {
        setDeleteComments((deleteComments) =>
          deleteComments.filter((deleteComment) => deleteComment.id !== id)
        );
      }
    });
    navigate(`/posts/${id}`);
    window.location.reload(true);
  }

  if (postsLoading || commentsLoading) {
    return <h1>Loading...</h1>;
  }

  console.log(posts);

  if (user) {
    return (
      <div className="postPageContainer">
        {posts.map((post) => {
          return (
            <div className="postPageDiv">
              <div className="postPageSecondaryDiv">
                <img src={post.profile_pic} alt="" className="postPageImage" />
                <p>{post.username}</p>
              </div>
              <div className="postPagePostContainer">
                <h1 className="postPageTitle">{post.title}</h1>
                <p className="postPageDate">{post.date}</p>
                <p className="postPageBody">{post.body}</p>
                <AddNewComment user={user} />
              </div>
            </div>
          );
        })}
        <div className="postPageSecondaryContainer">
          {comments.map((comment) => {
            return (
              <div className="postPageCommentContainer">
                <div className="postPageCommentDiv">
                  <img
                    src={comment.profile_pic}
                    alt=""
                    className="postPageCommentImage"
                  />
                  <h1 className="postPageCommentUsername">
                    {comment.username}
                  </h1>
                </div>
                <div className="displayFlex">
                  <div className="postPageCommentSecondaryDiv">
                    <p className="postPageCommentDate">{comment.date}</p>
                    <p className="postPageCommentBody">{comment.body}</p>
                    {/* <Button
                      variant="outlined"
                      onClick={() => handleDelete(comment.id)}
                      className="postPageCommentButton"
                    >
                      Delete <DeleteIcon className="deleteIcon" />
                    </Button> */}
                  </div>
                </div>
              </div>
            );
          })}
        </div>
      </div>
    );
  } else {
    return (
      <div className="postPageContainer">
        {posts.map((post) => {
          return (
            <div className="postPageDiv">
              <div className="postPageSecondaryDiv">
                <img src={post.profile_pic} alt="" className="postPageImage" />
                <p>{post.username}</p>
              </div>
              <div className="postPagePostContainer">
                <h1 className="postPageTitle">{post.title}</h1>
                <p className="postPageDate">{post.date}</p>
                <p className="postPageBody">{post.body}</p>
                <AddNewComment user={user} />
              </div>
            </div>
          );
        })}
        <div className="postPageSecondaryContainer">
          {comments.map((comment) => {
            return (
              <div className="postPageCommentContainer">
                <div className="postPageCommentDiv">
                  <img
                    src={comment.profile_pic}
                    alt=""
                    className="postPageCommentImage"
                  />
                  <h1 className="postPageCommentUsername">
                    {comment.username}
                  </h1>
                </div>
                <div>
                  <div className="postPageCommentSecondaryDiv">
                    <p className="postPageCommentDate">{comment.date}</p>
                    <p className="postPageCommentP">{comment.body}</p>
                  </div>
                </div>
              </div>
            );
          })}
        </div>
      </div>
    );
  }
}
