class SchedulerController < ApplicationController
    def newAccount
        @account = Account.new
    end
    
    def createAccount
       @account = Account.create(account_params)
       @account_id = @account.id
        # render 'new'
        
        if @account.save
            flash[:alert] = "Thanks! I'll be in touch soon!"
            redirect_to :action => 'newAccount'
        else
            render :action => 'newAccount'
        end 
    end
    
    def account_params
	    params.require(:account).permit(:first_name, :last_name, :email, :phone_number)
    end
    
    def newOrder
        @order = Order.new
    end
    
    def createOrder
       @order = Order.create(order_params)
        # render 'new'
        
        if @order.save
            flash[:success] = "Thanks! Order placed."
            redirect_to :action => 'newOrder'
        else
            render :action => 'newOrder'
        end 
    end
    
    def order_params
	    params.require(:order).permit(:product, :quantity, :account_id, :ship_date)
    end
end
