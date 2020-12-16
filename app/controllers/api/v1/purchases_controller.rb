class Api::V1::PurchasesController < ApplicationController

    def index
        purchases = Purchase.all
        render json: purchases
    end

    def show
        purchase = Purchase.find(purchase_params)
        render json: purchase
    end

    def create
        purchase = Purchase.create(purchase_params)
        render json: purchase
    end

    def update
    end

    def destroy
    end

    private

    def purchase_params
        params.require(:purchase).permit(:quantity, :user_id, :item_id)
    end
    
end
