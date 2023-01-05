class PostsController < ApplicationController

    def index
        posts = Post.all
        render json: posts
    end

    def show_post
        post = Post.where(id: params[:id])
        if post
            render json: post
        else render json: { error: "Post not found" }, status: :not_found
        end
    end

    def show
        post = Post.where(forum_id: params[:id])
        if post
            render json: post
        else render json: { error: "Post not found" }, status: :not_found
        end
    end

    def create
        post = Post.create!(post_params)
        render json: post, status: :created
    end

    def destroy
        find_post.destroy
        head :no_content
    end

    private

    def find_post
        Post.find(params[:id])
    end

    def post_params
        params.require(:post).permit(:title, :body, :date, :likes, :topic, :profile_pic, :username, :forum_id, :user_id)
    end

end
