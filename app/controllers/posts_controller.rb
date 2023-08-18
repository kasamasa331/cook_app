class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    render :new
  end

  
  
  def create
    @post = Post.new(post_params)

    if params[:post][:image]
      @post.image.attach(params[:post][:image])
    end

    if @post.save
      redirect_to index_post_path, notice: '登録しました'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :description, :ingredients)
  end
end