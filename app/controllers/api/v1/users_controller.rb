class Api::V1::UsersController < ApplicationController

    def create
        @user = User.create(user_params)
    end

    private

    def user_params
        params.require(:user).permit(:first_name, :last_name, :username, :email, :bio, :image)
    end
    
end
