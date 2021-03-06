class UsersController < ApplicationController
  before_action :check_for_admin, :only => [:index]
  
  
  def index
    @users = User.all
  end
  
  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      session[:user_id] = @user.id
      flash[:message] = "Thank you for signing up"
      redirect_to root_path 
    else
      render :new
    end
  end

  def destroy
    user = User.find params[:id]
    user.destroy
    redirect_to users_path
  end

  private
  def user_params
    params.require(:user).permit(:name, :family, :email, :password, :password_confirmation)
  end
end
