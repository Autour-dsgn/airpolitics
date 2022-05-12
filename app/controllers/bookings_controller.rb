class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @politician = Politician.find(params[:politician_id])
    @booking = Booking.new(booking_params)
    @booking.politician = @politician
    @booking.user = current_user
    if @booking.save
      redirect_to my_bookings_path
    else
      render 'politicians/show'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:date)
  end
end
