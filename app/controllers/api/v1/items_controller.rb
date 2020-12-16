class Api::V1::ItemsController < ApplicationController

    def index
        items = Item.all
        render json: items
    end

    def show
        item = Item.find(item_params)
        render json: item
    end

    def create
        item = Item.create(item_params)
        render json: item
    end

    def update
    end

    def destroy 
    end

    private

    def item_params
        params.require(:item).permit(:name, :image, :description, :price, :category)
    end
    
end
