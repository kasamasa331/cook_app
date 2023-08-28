 class PostsController < ApplicationController
  before_action :authenticate_user!

  def new
    @recipe = Recipe.find(params[:recipe_id])
    @comment = Post.new
    @comments = Post.where(recipe_id: params[:recipe_id])
    render :new
  end

  def create
    @comment = Post.new(comment_params)
    if @comment.save
      redirect_to new_comment_path(params[:recipe_id]), notice: 'コメントしました'
    else
      @recipe = Recipe.find(params[:recipe_id])
      @comments = Post.where(recipe_id: params[:recipe_id])
      render :new, status: :unprocessable_entity
    end
  end

  private
  def comment_params
    params.require(:post).permit(:comment).merge(recipe_id: params[:recipe_id], user_id: current_user.id)
  end
end 