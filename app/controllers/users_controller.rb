class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:mypage, :edit, :update]
  #before_action :set_user, only: [:show, :edit, :update]

  def mypage
    redirect_to user_path(current_user)
  end
    
  def show
  end

  def edit
     @user = current_user
     @user_profile = @user.user_profile
     if @user_profile == nil
      @user_profile = UserProfile.new
     end
     render :edit 
  end
    
  def update
    @user = current_user
    @user_profile = @user.user_profile
    if @user_profile == nil
      @user_profile = UserProfile.new(user_profile_params)
      result = @user_profile.save
    else
      @user_profile.name = params[:user_profile][:name]
      @user_profile.country_id = params[:user_profile][:country_id]
      result = @user_profile.save
    end
    if result
      redirect_to users_edit_path, notice: '登録しました'
    else
      redirect_to users_edit_path
    end
  end

  private



  def user_profile_params
    params.require(:user_profile).permit(:name, :country_id)
  end
end