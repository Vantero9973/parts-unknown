class ContinentsController < ApplicationController

    def index
        continents = Continent.all
        render json: continents
    end

    def show
        continent = Continent.find(params[:id])
        if continent
            render json: continent
        else render json: { error: "Continent not found" }, status: :not_found
        end
    end

end
