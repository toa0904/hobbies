Rails.application.routes.draw do
  devise_for :users
  root to: "tweets#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get   'tweets'      =>  'tweets#index'     #ツイート一覧画面
  get   'tweets/new'  =>  'tweets#new'       #ツイート投稿画面
  post  'tweets'      =>  'tweets#create' 
  delete 'tweets/:id' =>   'tweets#destroy'
  patch  'tweets/:id' =>   'tweets#update'
  get   'tweets/:id/edit' => 'tweets#edit'
  get   'users/:id'    =>  'users#show'
  # resources :tweets do
  # end
end
