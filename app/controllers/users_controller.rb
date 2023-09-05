class UsersController < ApplicationController
  before_action :authenticate_user!

  def mypage
    @user = current_user
    @user_profile = @user.user_profile 
    @user_recipes = Recipe.where(user_id: @user.id)
    @favorite_recipes = Recipe.joins(:favorites).where(favorites: { user_id: @user.id })
    @user_country = @user.country
    @user_comments = Post.where(user_id: @user.id)


    render :mypage
  end
    
  def show
    @user = User.find(params[:id])
    @recipe = @user.recipe

    favorites = Favorite.where(user_id: current_user.id).pluck(:recipe_id)  
    @favorite_list = Recipe.find(favorites)     
  end
end