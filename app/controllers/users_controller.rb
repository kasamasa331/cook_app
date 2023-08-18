class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:mypage, :edit, :update]
  before_action :set_user, only: [:show, :edit, :update]

  def mypage
    redirect_to user_path(current_user)
  end
    
  def show
  end

  def edit
    unless @user == current_user
      redirect_to user_path(@user)
    end
  end
    
  def update
    if @user == current_user && @user.update(user_profile_params)
      redirect_to user_path(@user)
    else
      redirect_to edit_user_path(@user)
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_profile_params
    params.require(:user).permit(:username, user_profile_attributes: [:name, :country])
  end
end