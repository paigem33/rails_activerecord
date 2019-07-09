Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/account_form' => 'scheduler#newAccount'
  post '/submit_account' => 'scheduler#createAccount'
  
  get '/order_form' => 'scheduler#newOrder'
  post '/submit_order' => 'scheduler#createOrder'
end
