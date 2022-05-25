class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    #debugger
  end
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params) #not the final impl
    if @user.save
      #handle successful save
    else
      render 'new'
    end
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
