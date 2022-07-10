class FurimasController < ApplicationController
  def index
    #@furimas = Furima.all
    @furimas = Furima.order("created_at DESC")
  end
  def new
    @furima = Furima.new
  end
  def create
    Furima.create(furima_params)
    if @furima.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def furima_params
    params.require(:furima) .permit(:image, :title, :content, :genre_id, :condition_id, :fee_id, :prefecture_id, :days_num_id, :price, :user).merge(user_id: current_user.id)
  end    
end
