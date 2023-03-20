class ItemsController < ApplicationController

    def index
        item= Item.all
        render json: item, include: :user
    end

    def show
        items=Item.find(params[:id])
        render json: items
    end
end
