class Api::V1::AuthController < ApplicationController
    skip_before_action :authorized, only: [:login]

    def login
        user = User.find_by(username: user_login_params[:username])
        if user && user.password_digest == params[:password_digest]
            payload={user_id: user.id}
            token= encode_token(payload)
            render json: {user: UserSerializer.new(user), jwt: token}, status: 200
        else
            render json: { errors: {error: "Login failed! User or password invalid!"} }.to_json, status: 401
        end
    end

    def auto_login
        if current_user
            render json: current_user
        else
            render json: {errors: "No user logged in"}
        end
    end

    private

    def user_login_params
      params.permit(:username, :password_digest)
    end
end