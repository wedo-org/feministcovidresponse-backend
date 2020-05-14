class Api::V1::ItemsController < ApplicationController
    skip_before_action :authorized, only: [:index, :show]
    before_action :find_item, only: [:show]

    def create
        @item = Item.create!(item_params)
        if @item.valid?
            render json: @item, status: 200
        else
            @all_errors = ''
            @item.errors.full_messages.each do |message|
                @all_errors += `#{message} - `
            end
            render json: { error: @all_errors }, status: :not_acceptable
        end
    end

    def update
        if @item.update(item_params)
            render json: @item, status: :accepted
        else
            render json: { errors: @item.errors.full_messages }, status: :unprocessible_entity
        end
    end

    def destroy
        @item.destroy
        head :no_content
    end

    def index
        begin
            @items = Item.all.map{|i| ItemSerializer.new(i).as_json}
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
        params.permit(:title_en, :title_es, :title_fr, :description_en, :description_es, :description_fr, :link, :date, :published, :progressive_id, :page_id, :user_id)
    end

    def find_item
        @item = Item.find_by(id: params[:id])
    end
end
