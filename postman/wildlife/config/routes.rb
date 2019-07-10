Rails.application.routes.draw do
  resources :animals
  # get '/animal_form' => 'animals#add'
  # post '/submit_animal' => 'animals#index'
  # get '/animal_update' => 'animals#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
