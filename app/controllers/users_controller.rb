class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @sleeps = @user.sleeps.page(params[:page]).reverse_order
    
  end

  def index
    @users = User.all
    @sleep = Sleep.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end
  
  private

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end

end
