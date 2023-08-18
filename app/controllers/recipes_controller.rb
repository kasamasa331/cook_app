class RecipesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

 

  def new
    @recipe = current_user.recipes.build
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user = current_user
  
    if @recipe.save
      redirect_to index_recipe_path, notice: '登録しました'
    else
      flash.now[:alert] = @recipe.errors.full_messages.join(', ')
      render :new
    end
  end
  private

  def recipe_params
    params.require(:recipe).permit(:title, :description, :country_id)
  end
end


