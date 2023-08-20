class UsersController < ApplicationController
  before_action :authenticate_user!

  def mypage
    render :mypage
  end
    
  def show
  end
end