class FavoritesController < ApplicationController
  def create
    sleep = Sleep.find(params[:sleep_id])
    favorite = current_user.favorites.new(sleep_id: sleep.id)
    favorite.save
    redirect_to sleep_path(sleep)
  end

  def destroy
    sleep = Sleep.find(params[:sleep_id])
    favorite = current_user.favorites.new(sleep_id: sleep.id)
    favorite.save
    redirect_to sleep_path(sleep)
  end
end
