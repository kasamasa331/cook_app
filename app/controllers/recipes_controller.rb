class RecipesController < ApplicationController
  before_action :authenticate_user!

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

  def edit
    @recipe = Recipe.find(params[:id])
    render :edit
  end

  def update
    @recipe = Recipe.find(params[:id])
    if params[:recipe][:image]
      @recipe.image.attach(params[:recipe][image])
    end
    if @recipe.update(recipe_params)
      redirect_to index_recipe_path,notice:'更新しました'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
    @comment = Post.new
    @comments = Post.where(id: params[:id])  
  end

  def create_comment
    @comment = Post.new(post_params)
    @comment.user = current_user
    if @comment.save
      redirect_to recipe_show_path, notice: 'コメントしました'
    else
      @recipe = Recipe.find(params[:id])
      @comments = Post.where(id: params[:id])
      render :show, status: :unprocessable_entity
    end
  end

  private
  def post_params
    params.require(:post).permit(:comment, :recipe_id).merge(recipe_id: params[:recipe_id], user_id: current_user.id)
  end


  private

  def recipe_params
    params.require(:recipe).permit(:title, :description, :cooking_method, :cooking_time, :country_id, :category_id, :ingredient_id,  :type_id)
  end
end


