module Api
    class DestinationsController < ApplicationController

        def index
            destinations = Destination.all
            render json: destinations
        end

        def index_three
            destinations = Destination.all.sample(3)
            render json: destinations
        end

        def show
            destination = Destination.where(country_id: params[:id])
            if destination
                render json: destination
            else render json: { error: "Destination not found" }, status: :not_found
            end
        end

    end
end
