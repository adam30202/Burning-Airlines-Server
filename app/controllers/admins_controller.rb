class AdminsController < ApplicationController
  def new
    @admin = User.new
  end

  def create
    @admin = User.new(admin_params)
    @admin.role = "admin"

    if @admin.save
      session[:user_id] = @admin.id # sign in the new admin
      redirect_to new_airplane_path, notice: "Admin account created successfully."
    else
      render :new
    end
  end

  private
  def admin_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
