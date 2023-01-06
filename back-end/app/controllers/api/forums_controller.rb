module Api
    class ForumsController < ApplicationController

        def index
            forums = Forum.all
            render json: forums
        end

        def show
            forum = Forum.where(country_id: params[:id])
            if forum
                render json: forum
            else render json: { error: "Forum not found" }, status: :not_found
            end
        end

    end

end