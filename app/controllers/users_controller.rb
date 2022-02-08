class UsersController < ApplicationController

    #GET /me
    def show
        user = User.find_by(id: session[:user_id])
        if user
            render json: user, status: :ok
        else
            render json: { error: "User not found" }, status: :not_found
        end
    end
end
