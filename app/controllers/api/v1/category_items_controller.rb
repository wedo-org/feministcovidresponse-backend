class Api::V1::CategoryItemsController < ApplicationController
    before_action :find_category_item, only: [:show]

    def index
        begin
            @category_items = CategoryItem.all.map{|c| {
                name: c.name
            }}
            render json: @category_items, status: 200
        rescue StandardError => e
            render json: {"error": ("#{e.message}") }, status: 400
        end
    end

    def show
        begin
            render json: @category_item, status: 200
        rescue StandardError => e
            render json: {"error": ("#{e.message}") }, status: 400
        end
    end

    private

    def category_items_params
        params.permit(:name)
    end

    def find_category_item
        @category_item = CategoryItem.find_by(name: params[:name])
    end
end
