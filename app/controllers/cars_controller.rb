class CarsController < ApplicationController
  before_action :set_car, only: [:show, :edit, :update, :destroy]

  def index
    @cars = Car.all
  end

  def show
  end

  def new
    @car = Car.new
  end

  def edit
  end

  # POST /cars
  def create
    @Car = Car.new(car_params)

    if @car.save
      redirect_to @car, notice: 'Car was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /cars/1
  def update
    if @car.update(car_params)
      redirect_to @car, notice: 'Car was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /cars/1
  def destroy
    @car.destroy
    redirect_to car_url, notice: 'Car was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car
      @car = Car.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def car_params
      params.require(:car).permit(:name)
    end
end
