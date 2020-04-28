class Api::V1::ItemsController < ApplicationController
    before_action :find_item, only: [:show]

    def index
        begin
            @items = Item.all.map{|i| {
                title: i.title,
                types: i.make_types,
                link: i.link,
                eventDate: i.make_date,
                progressive: i.make_progressive,
                category: i.category.name,
                countries: i.make_countries
            }}
            render json: @items, status: 200
        rescue StandardError => e
            render json: {"error": ("#{e.message}") }, status: 400
        end
    end

    def show
        begin
            # byebug
            render json: @item, status: 200
        rescue StandardError => e
            render json: {"error": ("#{e.message}") }, status: 400
        end
    end

    private

    def item_params
        params.permit(:name)
    end

    def find_item
        # @item = Item.find_by(name: params[:name])
        @item = Item.find_by(id: params[:id])
    end
end