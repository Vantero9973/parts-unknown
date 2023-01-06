module Api
    class ForumCommentsController < ApplicationController

        def index
            comments = ForumComment.all
            render json: comments
        end

        def show
            comment = ForumComment.where(post_id: params[:id])
            if comment
                render json: comment
            else render json: { error: "Comment not found" }, status: :not_found
            end
        end

        def create
            comment = ForumComment.create!(comment_params)
            render json: comment, status: :created
        end

        def destroy
            find_comment.destroy
            head :no_content
        end

        private

        def find_post
            ForumComment.find(params[:id])
        end

        def comment_params
            params.require(:forum_comment).permit(:body, :date, :likes, :username, :profile_pic, :post_id, :user_id)
        end

    end
end
