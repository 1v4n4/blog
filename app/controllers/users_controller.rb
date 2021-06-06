class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]

  def show
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
  end

  def index
  end
  
  def create 
    @user = User.new(user_params)
       
    if @user.save
      redirect_to :root
    else
      render :new
    end
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      def user_params 
        params.require(:user).permit(:username, :mail, :password, :password_confirmation)
      end
      render :edit
    end
  end  
  
  
  private
  def user_params 
    params.require(:user).permit(:username, :mail, :password, :password_confirmation)
  end
end
