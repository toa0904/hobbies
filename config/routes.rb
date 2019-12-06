Rails.application.routes.draw do
  devise_for :users
  root to: "tweets#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html       
  resources :tweets do
  end
  resources :users, only: [:show]
  post "likes/:food_id/create", to: "likes#create", constraints: {food_id: /\d+/}, as: :likes_create
  post "likes/:food_id/delete", to: "likes#delete", constraints: {food_id: /\d+/}, as: :likes_delete
end
