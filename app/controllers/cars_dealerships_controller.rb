class CarsDealershipsController < ApplicationController
  before_action :require_signin
  # before_action :authenticate_user!
  before_action :block_if_not_admin

  before_action :set_car, only: %i[ new create edit update destroy]
  before_action :set_dealerships_picklist, only: %i[new create edit update]
  before_action :set_cars_dealership, only: %i[edit update destroy ]

  # GET /cars_dealerships/new
  def new
    @cars_dealership = CarsDealership.new
  end

  # GET /cars_dealerships/1/edit
  def edit
  end

  # POST /cars_dealerships or /cars_dealerships.json
  def create
    @cars_dealership = CarsDealership.new(cars_dealership_params)

    respond_to do |format|
      if @cars_dealership.save
        format.html { redirect_to car_url(@car), notice: "Cars dealership was successfully created." }
        format.json { render :show, status: :created, location: @cars_dealership }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cars_dealership.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cars_dealerships/1 or /cars_dealerships/1.json
  def update
    respond_to do |format|
      if @cars_dealership.update(cars_dealership_params)
        format.html { redirect_to car_url(@cars_dealership.car_id), notice: "Cars dealership was successfully updated." }
        format.json { render :show, status: :ok, location: @cars_dealership }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cars_dealership.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cars_dealerships/1 or /cars_dealerships/1.json
  def destroy
    @cars_dealership.destroy

    respond_to do |format|
      format.html { redirect_to car_url(@cars_dealership.car_id), notice: "Cars dealership was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Only allow a list of trusted parameters through.
    def cars_dealership_params
      params.require(:cars_dealership).permit(:car_id, :dealership_id, :located_at)
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_cars_dealership
      @cars_dealership = CarsDealership.find(params[:id])
    end

    def set_car
      @car = Car.find(params[:car_id])
    end

    def set_dealerships_picklist
      @dealerships = Dealership.all
    end
end
