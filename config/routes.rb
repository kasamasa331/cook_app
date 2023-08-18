Rails.application.routes.draw do

  devise_for :users
  get '/', to: 'home#index', as: 'index_home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"


  
  

  # レシピ
  get 'home/recipe', to: 'home#recipe', as: 'home_recipe'

  #　国
  get 'home/country', to: 'home#country', as: 'home_country'
 
  #スライドバー
  resources :countries
  resources :recipes
  resources :creators
  resources :users

  #ユーザーページ
  get 'users/show',to: 'users#show', as: 'users_show'
  resources :users, only: [:show, :edit, :update]
  get '/mypage',to: 'users#mypage', as:'users_mypage'

  #投稿PostsController
  get '/', to: 'posts#index', as: 'index_post'
  get 'posts/new', to: 'posts#new', as: 'new_post'
  post 'posts/new', to: 'posts#create', as: 'create_post'
end
