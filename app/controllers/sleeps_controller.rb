class SleepsController < ApplicationController
  
  def new
    @sleep =Sleep.new
  end

  def create
    @sleep = Sleep.new(sleep_params)
    @sleep.user_id = current_user.id
    @sleep.save
    redirect_to sleeps_path
    
  end

  def index
    @sleeps = Sleep.page(params[:page]).reverse_order
    
  end

  def show
    @sleep = Sleep.find(params[:id])
    @post_comment = PostComment.new
    
  end

  def destroy
    @sleep = Sleep.find(params[:id])
    @sleep.destroy
    redirect_to sleep_path
  end
  
private
  
  def sleep_params
    params.require(:sleep).permit(:image, :date, :opinion)
  end
  
end
