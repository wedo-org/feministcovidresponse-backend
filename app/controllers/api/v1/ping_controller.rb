class Api::V1::PingController < ApplicationController
    skip_before_action :authorized, only: [:index]
    def index
        if status == 200
            render json: {"success": true}, status: status
        else 
            render json: {"success": false}, status: status
        end
    end
end
