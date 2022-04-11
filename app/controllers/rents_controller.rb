class RentsController < ApplicationController
  before_action :check_for_login
  
  def index
    @rents = Rent.all
  end

  def new
    @rent = Rent.new
  end

  def create
    rent = Rent.create rent_params
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

  private
  def rent_params
    params.require(:rent).permit(:address, :price, :room, :bath, :property, :available, :image, :user_id, :sell_id)
  end
end
