Rails.application.routes.draw do
  resources :repairs
  resources :cars
  get "/cars/:id/add_repair", to: "cars#add_repair", as: "add_repair"
  get "/cars/:id/repairs", to: "cars#show_repairs", as: "show_repairs"

  root 'cars#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
