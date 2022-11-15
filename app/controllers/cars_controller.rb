class CarsController < ApplicationController
  before_action :require_signin
  # before_action :authenticate_user!
  before_action :block_if_not_admin, except: [:index, :show]
  before_action :set_car, only: [:show, :edit, :update, :destroy]
  before_action :get_car_dealerships, only: [:show ]

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

  def get_car_dealerships
    @car_dealerships = CarsDealership.includes(:dealership).where("car_id = ?", params[:id] )
    puts "car_dealerships #{@car_dealerships}"
  end

end
