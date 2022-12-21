class DestinationsController < ApplicationController

    def index
        destinations = Destination.all
        render json: destinations
    end

    def show
        destination = Destination.find(params[:id])
        if destination
            render json: destination
        else render json: { error: "Destination not found" }, status: :not_found
        end
    end

end
