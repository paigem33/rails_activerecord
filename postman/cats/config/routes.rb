Rails.application.routes.draw do
  resources :cats
  post "/sightings" => "sightings#create"
  put "/sightings/:id" => "sightings#update"
  get "sightings" => "sightings#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
