class UsersProfileController < ApplicationController
  before_action :authenticate_user!

  def create
    @post =UserProfile.new(post_params)

    if params[:post][:image]
      @post.image.attach(params[:post][:image])
    end

    if @post.save
      redirect_to index_post_path, notice: '登録しました'
    else
      render :edit, status: :unprocessable_entity
    end
  end


  def edit
    @user = current_user
    @user_profile = @user.user_profile
    if @user_profile == nil
      @user_profile = UserProfile.new
    end
    @countries = Country.all
    render :edit
  end

  def update
    @user = current_user
    @user_profile = @user.user_profile
    if @user_profile == nil
      @user_profile = UserProfile.new
      @user_profile.user_id = @user.id
    end
    @user_profile.name = params[:user_profile][:name]
    @user_profile.country_id = params[:user_profile][:country_id]

    if @user_profile.save
      redirect_to user_profile_edit_path, notice: '登録しました'
    else
      redirect_to user_profile_edit_path
    end
  end

  private

  def user_profile_params
    params.require(:user_profile).permit(:name, :country_id)
  end
end
