class ShopItemsController < ApplicationController

    def index
        items = ShopItem.all
        render json: items
    end

    def show
        item = ShopItem.where(id: params[:id])
        if item
            render json: item
        else render json: { error: "Item not found" }, status: :not_found
        end
    end

end
