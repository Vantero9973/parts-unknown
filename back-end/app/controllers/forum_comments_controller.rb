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

end
