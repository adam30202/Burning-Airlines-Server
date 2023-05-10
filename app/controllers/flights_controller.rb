class FlightsController < ApplicationController
    before_action :set_flight, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_admin!, except: [:index, :show]
    
    def index
        @flights = Flight.all
        render json: @flights
    end

    def new
        @flight = Flight.new
    end

    def create
        flight = Flight.create flight_params
        redirect_to flight
    end

    def edit
        @flight = Flight.find params[:id]
    end

    def update
        flight = Flight.find params[:id]
        flight.update flight_params
        redirect_to flight
    end

    def show
        @flight = Flight.find params[:id]
    end

    def destroy
        flight = Flight.find params[:id]
        flight.destroy
        redirect_to flights_path
    end

    private

    def flight_params
        params.require(:flight).permit(:rows, :column)
    end

    def authenticate_admin!
        unless current_user && current_user.admin?
        redirect_to root_path, alert: "You must be an admin to access this page."
        end
    end
end
