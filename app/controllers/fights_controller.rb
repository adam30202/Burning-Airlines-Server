class FlightsController < ApplicationController
    before_action :set_flight, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_admin!, except: [:index, :show]
  
    # ...
  
    private
  
    def authenticate_admin!
      unless current_user && current_user.admin?
        redirect_to root_path, alert: "You must be an admin to access this page."
      end
    end
  end
  