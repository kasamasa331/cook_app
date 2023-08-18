class HomeController < ApplicationController
  def index
    @title = params[:title]
    if @title.present?
      @posts = Post.where('title LIKE ?', "%#{@title}%")
    else
      @posts = Post.all
    end
    render :index
  end

  def recipe
  end
end