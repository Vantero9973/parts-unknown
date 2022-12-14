class PostsController < ApplicationController

    def index
        posts = Post.all
        render json: posts
    end

    def show
        post = Post.find(params[:id])
        if post
            render json: post
        else render json: { error: "Post not found" }, status: :not_found
        end
    end

end
