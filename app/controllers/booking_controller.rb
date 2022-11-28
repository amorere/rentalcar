class BookingController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to cars_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @car.update(booking_params)
      redirect_to cars_path(@car)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def pay
  end

  private

  def booking_params
    params.require(:booking).permit(:check_in, :check_out, :pick_point, :drop_point, :time_check_in, :time_check_out )
  end
end
