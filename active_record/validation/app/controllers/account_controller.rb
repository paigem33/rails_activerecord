class AccountController < ApplicationController
    def new
        @account = Account.new
    end
    def create
        @account = Account.create(contact_params)
        # render 'new'
        
        if @account.save
            flash[:success] = "Thanks! I'll be in touch soon!"
            redirect_to :action => 'new'
        else
            render :action => 'new'
        end
    end
    
    private
    
    def contact_params
	    params.require(:account).permit(:username, :password, :email)
    end
end
