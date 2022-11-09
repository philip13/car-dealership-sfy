class CarsController < ApplicationController
  before_action :set_car, only: [:show, :edit, :update, :destroy]

  def index
    @cars = Car.all
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)

    if @car.save
      redirect_to @car
    else
      render :new, status: :unprocessable_entity
    end 
  end

  def show
  end

  def edit
  end

  def update
    if @car.update(car_params)
      redirect_to @car
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @car.destroy

    redirect_to car_path, status: :see_other
  end

  private
  def car_params
    params.require(:car).permit( :brand, :model, :sub_model, :price, :condition, :entry_date)
  end

  def set_car
    @car = Car.find(params[:id])
  end
end
