Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "static_pages#home"
  get "timeline" => "static_pages#timeline"
  resources :users
  resources :posts, only: [:create, :destroy]
  resources :comments, only: [:create, :destroy]
end
