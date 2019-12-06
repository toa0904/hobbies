Rails.application.routes.draw do
  devise_for :users
  root to: "tweets#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html       
  resources :tweets do
  end
  resources :users, only: [:show]
  resources :likes, only: [:create, :destroy]
end
