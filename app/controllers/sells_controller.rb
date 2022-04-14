class SellsController < ApplicationController
  before_action :check_for_login

  def index
    @sells = Sell.all
  end

  def new
    @sell = Sell.new
  end

  def create
    sell = @current_user.sells.create sell_params
    redirect_to sell
  end

  def edit
    @sell = Sell.find params[:id]
  end

  def update
    sell = Sell.find params[:id]
    sell.update sell_params
    redirect_to sell
  end

  def show
    @sell = Sell.find params[:id]
  end

  def destroy
    sell = Sell.find params[:id]
    sell.destroy
    redirect_to sells_path
  end

  def search
    @sells = Sell.where(["price > #{params[:min].to_i} and price < #{params[:max].to_i}"])    
  end

  private
  def sell_params
    params.require(:sell).permit(:address, :price, :room, :bath, :property, :available, :image, :user_id, :rent_id, :agent_id)
  end

end
