class CarsController < ApplicationController
  before_action :load_car, only: %i(edit update destroy)

  def new
    @car = Car.new
  end

  def create
    @car = Site.new(site_params)

    if @car.save
      redirect_to cars_path,
                  notice: 'Car was successfully created.'
    else
      render :new
    end
  end

  def update
    if @car.update(car_params)
      redirect_to cars_path,
                  notice: 'Car was successfully updated.'
    else
      render :edit
    end
  end

  def edit; end

  def destroy
    @site.destroy
    redirect_to cars_path,
                notice: 'Site was successfully destroyed.'
  end

  def index
    @cars = Car.all
  end

  private

  def load_car
    @car = Car.find(params[:id])
  end

  def site_params
    params.require(:car).permit(:name, :status, :price, :dealer_ship_id)
  end

end
