class HomesController < ApplicationController
  def top
    @sleeps = Sleep.page(params[:page]).reverse_order
  end
  
end