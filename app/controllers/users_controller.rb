class UsersController < ApplicationController
  before_action :authenticate_user!

  def mypage
    render :mypage
  end
    
  def show
    @user = User.find(params[:id])
    @recipe = @user.recipe

    favorites = Favorite.where(user_id: current_user.id).pluck(:recipe_id)  
    @favorite_list = Recipe.find(favorites)     # postsテーブルから、お気に入り登録済みのレコードを取得
  end
end