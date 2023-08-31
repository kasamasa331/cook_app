class FavoritesController < ApplicationController
  before_action :authenticate_user!

  def create
    @favorite = Favorite.new(user_id: current_user.id, recipe_id: params[:recipe_id])
    if @favorite.save
      redirect_to index_recipe_path, notice: 'お気に入りに登録しました。'
    else
      redirect_to index_recipe_path, alert: 'お気に入りに登録できませんでした。'
    end
  end

  def destroy
    @favorite = Favorite.find_by(user_id: current_user.id, recipe_id: params[:recipe_id])
    if @favorite
      @favorite.destroy
      redirect_to index_recipe_path, notice: 'お気に入りを削除しました。'
    else
      redirect_to index_recipe_path, alert: 'お気に入りが見つかりませんでした。'
    end
  end
end