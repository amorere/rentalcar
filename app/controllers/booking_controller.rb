class BookingController < ApplicationController
  before_action :set_car, only: %i[show update destroy edit]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params) #en que momento se le asigna el user_id y el car_id
    if @booking.save
      redirect_to cars_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @car.update(booking_params)
    redirect_to cars_path(@car)

  end

  def pay
  end

  private

  def booking_params
    params.require(:booking).permit(:check_in, :check_out, :pick_point, :drop_point, :time_check_in, :time_check_out )
  end
end
