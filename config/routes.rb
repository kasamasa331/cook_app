Rails.application.routes.draw do

  devise_for :users
  get '/', to: 'home#index', as: 'index_home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  # レシピ
  post 'recipes/new', to: 'recipes#create', as: 'create_recipe'
  get 'home/recipe', to: 'home#recipe', as: 'home_recipe'
  get 'recipes/new', to: 'recipes#new', as: 'recipe_new'
  get 'recipes/index', to: 'recipes#index', as: 'index_recipe'
  delete 'recipes/destroy/:id', to: 'recipes#destroy', as: 'destroy_recipe'
  get 'recipes/edit/:id', to: 'recipes#edit', as: 'edit_recipe'
  post 'recipes/edit/:id', to: 'recipes#update', as: 'update_recipe'
  get 'recipes/show/:id', to: 'recipes#show', as: 'recipe_show'
  # #　レシピコメント
  # post 'recipes/:id/comments', to: 'recipes#create_comment', as: 'create_comment_recipe'
 
  # レシピいいね
  post 'recipes/:recipe_id/favorites', to: 'favorites#create', as: 'create_favorite'
  delete 'recipes/:recipe_id/favorites', to: 'favorites#destroy', as: 'destroy_favorite'

   # ここから追加
  # CommentsController
  get 'recipes/show/:recipe_id/comments/new', to: 'posts#new', as: 'new_comment'
  post 'recipes/show/:recipe_id/comments/new', to: 'posts#create', as: 'create_comment'
  # ここまで

  #　国
  get 'home/country', to: 'home#country', as: 'home_country'
 
  #スライドバー

  #ユーザーページ
  get 'users/show',to: 'users#show', as: 'users_show'
  #resources :users, only: [:show, :edit, :update]
  get '/mypage',to: 'users#mypage', as:'users_mypage'




  # ユーザープロフィール
  get '/user_profile/edit',to: 'users_profile#edit', as: 'user_profile_edit'
  post '/user_profile/edit',to: 'users_profile#update', as: 'user_profile_update'

  #投稿PostsController
  get '/', to: 'posts#index', as: 'index_post'
  get 'posts/new', to: 'posts#new', as: 'new_post'
  post 'posts/new', to: 'posts#create', as: 'create_post'

  #ユーザープロフィール
  get 'user_profiles/show',to: 'user_profiles#show', as: 'user_profile_show'
  resources :user_profiles, only: [:show, :edit, :update]
  get 'user_profiles/mypage',to: 'user_profiles#mypage', as:'user_profile_mypage'
end
