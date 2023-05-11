class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
    render json: @reservations
  end

  def new
      @reservation = Reservation.new(user: current_user, seat: @seat)
  end

  def create
    # @flight = Flight.find(params[:flight_id]) # Look for flight records, not sure if params are correct
    # @seat = @flight.seats.find_by(row: params[:row], column: params[:column]) # Look for seat records

    # @reservation = Reservation.new(user: current_user, seat: @seat) # creates new reservation based on current user + seat selection

    data = JSON.parse(request.body.read)
    puts data
    @reservation = Reservation.new(data, user: current_user, seat: @seat)
    if @reservation.save
      render json: @reservation, status: :created
    else
      render json: @reservation.errors, status: :unprocessable_entity
    end

    # redirect_to :root # or wherever the landing page is
  end

  def edit
      @reservation = Reservation.find params[:id]
  end

  def update
      reservation = Reservation.find params[:id]
      reservation.update reservation_params
      redirect_to reservation
  end

  def show
      @reservation = Reservation.find params[:id]
  end

  def destroy
      reservation = Reservation.find params[:id]
      reservation.destroy
      redirect_to reservations_path
  end

  private

  def reservation_params
      params.require(:reservation).permit(:rows, :column)
  end
end
