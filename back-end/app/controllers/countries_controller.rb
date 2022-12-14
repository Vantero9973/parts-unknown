class CountriesController < ApplicationController

    def index
        countries = Country.all
        render json: countries
    end

    def show
        country = Country.find(params[:id])
        if country
            render json: country
        else render json: { error: "Country not found" }, status: :not_found
        end
    end
    
end
