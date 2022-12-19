class BlogsController < ApplicationController

    def index
        blogs = Blog.all
        render json: blogs
    end

    def show
        blog = Blog.where(id: params[:id])
        if blog
            render json: blog
        else render json: { error: "Blog not found" }, status: :not_found
        end
    end

end
