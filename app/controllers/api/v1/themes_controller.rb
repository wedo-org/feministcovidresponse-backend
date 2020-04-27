class Api::V1::ThemesController < ApplicationController
    before_action :find_theme, only: [:show]

    def index
        begin
            @themes = Theme.all.map{|c| {
                name: c.name
            }}
            render json: @themes, status: 200
        rescue StandardError => e
            render json: {"error": ("#{e.message}") }, status: 400
        end
    end

    def show
        begin
            render json: @theme, status: 200
        rescue StandardError => e
            render json: {"error": ("#{e.message}") }, status: 400
        end
    end

    private

    def theme_params
        params.permit(:name)
    end

    def find_theme
        @theme = Theme.find_by(name: params[:name])
    end
end
