class FlightsController < ApplicationController
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
end
