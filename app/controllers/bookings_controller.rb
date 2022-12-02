class BookingsController < ApplicationController
  before_action :find_booking, only: %i[update edit]

  def new
    @car = Car.find(params[:car_id])
    @booking = Booking.new
  end

  def index
    @bookings = current_user.bookings
  end

  def create
    @car = Car.find(params[:car_id])
    @booking = Booking.new(booking_params)
    @booking.user_id = current_user.id
    @booking.car_id = @car.id
    days = (@booking.check_out - @booking.check_in).to_i
    @booking.final_price = @car.daily_price * days
    if @booking.save
      redirect_to bookings_path
    else
      render :new, status: :unprocessable_entity
    end

  end

  def edit
  end

  def update
    @booking.update(booking_params)
    redirect_to booking_path(@booking) #esto es car_path? no existe el booking_path
  end

  private

  def booking_params
    params.require(:booking).permit(:check_in, :check_out, :pick_point, :drop_point, :time_check_in, :time_check_out )
  end

  def find_booking
    @booking = Booking.find(params[:id])
  end
end
