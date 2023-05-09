class ReservationsController < ApplicationController
  def index
  end

  def new
  end

  def edit
  end

  def show
  end

  def create
    # @flight = Flight.find(params[:flight_id]) # Look for flight records, not sure if params are correct
    # @seat = @flight.seats.find_by(row: params[:row], column: params[:column]) # Look for seat records

    @reservation = Reservation.new(user: current_user, seat: @seat) # creates new reservation based on current user + seat selection
    redirect_to :root # or wherever the landing page is
  end

  def update
  end

  def destroy
  end
end
