class Api::V1::ThemeItemsController < ApplicationController
    before_action :find_theme_items, only: [:show]

    def index
        begin
            @theme_items = ThemeItems.all.map{|c| {
                name: c.name
            }}
            render json: @theme_items, status: 200
        rescue StandardError => e
            render json: {"error": ("#{e.message}") }, status: 400
        end
    end

    def show
        begin
            render json: @theme_items, status: 200
        rescue StandardError => e
            render json: {"error": ("#{e.message}") }, status: 400
        end
    end

    private

    def theme_items_params
        params.permit(:name)
    end

    def find_theme_items
        @theme_items = ThemeItems.find_by(name: params[:name])
    end
end
