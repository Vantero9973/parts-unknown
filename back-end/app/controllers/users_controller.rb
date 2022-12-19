class UsersController < ApplicationController

    def index
        users = User.all
        render json: users
    end

    def show
        user = User.where(id: params[:id])
        if user
            render json: user
        else render json: { error: "User not found" }, status: :not_found
        end
    end

end
