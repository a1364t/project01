class RentsController < ApplicationController
  before_action :check_for_login
  
  def index
    @rents = Rent.all
    @sells = Sell.all
    
  end

  def new
    @rent = Rent.new
  end

  def create
    rent = @current_user.rents.create rent_params
    redirect_to rent
  end

  def edit
    @rent = Rent.find params[:id]
  end

  def update
    rent = Rent.find params[:id]
    rent.update rent_params
    redirect_to rent
  end

  def show
    @rent = Rent.find params[:id]
  end

  def destroy
    rent = Rent.find params[:id]
    rent.destroy
    redirect_to rents_path
  end

  def search
    @rents = Rent.where(["price > #{params[:min].to_i} and price < #{params[:max].to_i}"])    
  end

  private
  def rent_params
    params.require(:rent).permit(:address, :price, :room, :bath, :property, :available, :image, :sell_id, :agent_id)
  end
end
