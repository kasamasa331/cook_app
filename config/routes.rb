Rails.application.routes.draw do

  devise_for :users
  root to: 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # PostsController
  get 'posts/new', to: 'posts#new', as: 'new_post'

  # homeにサイドバー作った
  resources :countries
  resources :recipes
  resources :creators
  resources :users

  

end
