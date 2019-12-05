Rails.application.routes.draw do
  devise_for :users
  root to: "tweets#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get   'tweets'      =>  'tweets#index'     #ツイート一覧画面
  get   'tweets/new'  =>  'tweets#new'       #ツイート投稿画面
  post  'tweets'      =>  'tweets#create' 
  get   'users/:id'    =>  'users#show'
  delete 'tweets/:id' =>   'tweets#destroy'
  # resources :tweets do
  # end
end
