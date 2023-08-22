class RecipesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @title = params[:title]
    if @title.present?
      @title = Recipe.where('title LIKE ?', "%#{@title}%")
    else
      @title = Recipe.all
    end
    render :index
  end

  def new
    @recipe = current_user.recipes.build
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user = current_user

    if params[:recipe][:image]
      @recipe.image.attach(params[:recipe][:image])
    end
    if @recipe.save
      redirect_to index_recipe_path, notice: '登録しました'
    else
      render :new, status: :unprocessable_entity
    end
  end
  private

  def recipe_params
    params.require(:recipe).permit(:title, :description, :cooking_method, :cooking_time, :country_id, :category_id, :ingredient_id, :user_profile_id, :type_id)
  end
end


