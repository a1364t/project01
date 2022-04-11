class SellsController < ApplicationController
  def index
    @sells = Sell.all
  end

  def new
    @sell = Sell.new
  end

  def create
    sell = Sell.create sell_params
    redirect_to sell
  end

  def edit
    @sell = Sell.find params[:id]
  end

  def update
    sell = Sell.find params[:id]
    sell.update sell params
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

  #private
end
