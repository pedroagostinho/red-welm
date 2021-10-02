Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :dimensions, only: [:index]
  get 'dimensions/add_dimension', to: "dimensions#add_dimension", as: "add_dimension"
end
