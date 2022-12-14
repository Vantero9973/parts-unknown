class ForumsController < ApplicationController

    def index
        forums = Forum.all
        render json: forums
    end

    def show
        forum = Forum.find(params[:id])
        if forum
            render json: forum
        else render json: { error: "Forum not found" }, status: :not_found
        end
    end

end
