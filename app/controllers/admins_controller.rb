class AdminsController < ApplicationController
    def new
      @admin = User.new
    end
  
    def create
      @admin = User.new(admin_params)
      @admin.role = "admin"
  
      if @admin.save
        redirect_to new_admin_path, notice: "Admin account created successfully."
    else
        render :new
      end
    end
  
    private
  
    private
    def user_params
      params.require(:user).permit(:username)
    end
  end
  