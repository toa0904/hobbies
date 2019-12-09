Rails.application.routes.draw do
  get 'rooms/show'

  devise_for :users
  root to: "tweets#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html       
  resources :tweets do
    resources :likes, only: [:create, :destroy]
  end
  resources :users, only: [:show]
end
