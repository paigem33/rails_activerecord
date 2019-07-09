class UsersController < ApplicationController
    def new
        @user = user.new
    end
    def create
        @user = User.create(user_params)
        render 'new'
    end
    
    private
    
    def contact_params
	    params.require(:user).permit(:username, :password, :email)
    end
end
