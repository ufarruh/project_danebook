Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "users#new"

  resources :users
  resource :session, only: [:create, :destroy]

  get "login" => "sessions#new"
  delete "logout" => "sessions#destroy"

end
