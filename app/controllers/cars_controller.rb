class CarsController < ApplicationController
  before_action :set_car, only: %i[show update destroy edit]

  def index
    @cars = Car.all

    # if params[:query].present?
    #   @query = params[:query]
    #   @flats = Flat.where("name LIKE ?", "%#{params[:query]}%")
    #   # Preventing SQL Injection and Database error for
    #   # unknown characters
    # else
    #   @flats = Flat.all
    # end
  end

  def show

  end

  def misautos
    @misautos = current_user.cars
  end

  def edit
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    @car.user_id = current_user.id
    if @car.save
      redirect_to cars_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @car.update(car_params)
    redirect_to car_path(@car)
  end

  def destroy
    @car.destroy
    redirect_to misautos_path, status: :see_other
  end

  private

  def set_car
    @car = Car.find(params[:id])
  end

  def car_params
    params.require(:car).permit(:model, :brand, :kms, :year, :plate, :color, :capacity, :load, :transmission, :technical_approval, :insurance, :performance, :daily_price, photos: [])
  end
end
