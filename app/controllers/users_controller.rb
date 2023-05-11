class UsersController < ApplicationController
  before_action :check_for_admin, only: [:index]
  
  def index
    @users = User.all
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to current_user_path # redirect to the current user page
    else
      render :new
    end
  end

  def show
    @user = current_user
  end
  
  private
  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
