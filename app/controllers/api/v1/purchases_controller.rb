class Api::V1::PurchasesController < ApplicationController

    def index
        purchases = Purchase.all
        render json: purchases
    end

    def show
        purchase = Purchase.find(params[:id])
        render json: purchase
    end

    def create
        purchase = Purchase.create(purchase_params)
        render json: purchase
    end

    def update
        purchase = Purchase.find(params[:id])
        purchase.update!(purchase_params)
        render json: purchase
    end

    def destroy
        purchase = Purchase.find(params[:id])
        purchase.destroy
        render json: purchase
    end

    private

    def purchase_params
        params.require(:purchase).permit(:quantity, :user_id, :item_id)
    end
    
end
