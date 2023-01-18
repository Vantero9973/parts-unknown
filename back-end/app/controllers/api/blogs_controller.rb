module Api
    class BlogsController < ApplicationController

        def index
            blogs = Blog.all
            render json: blogs
        end

        def landing_images
            blogs = Blog.all.sample(3)
            render json: blogs
        end

        def show
            blog = Blog.where(id: params[:id])
            if blog
                render json: blog
            else render json: { error: "Blog not found" }, status: :not_found
            end
        end

        def create
            blog = Blog.create!(blog_params)
            render json: blog, status: :created
        end

        def destroy
            find_blog.destroy
            head :no_content
        end

        def update
            find_blog.update!(blog_params)
            render json: find_blog, status: :accepted
        end

        private

        def find_blog
            Blog.find(params[:id])
        end

        def blog_params
            params.require(:blog).permit(:title, :body, :description, :image, :date, :likes, :read_time, :category_one, :category_two, :username, :profile_pic, :user_id)
        end

    end
end
