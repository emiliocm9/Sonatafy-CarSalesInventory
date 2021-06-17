class CarsController < ApplicationController
  before_action :load_car, only: %i(edit update destroy)
  before_action :validate_session_admin, only: %i(new create edit update destroy)
  before_action :validate_session

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)

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
    @car.destroy
    redirect_to cars_path,
                notice: 'Site was successfully destroyed.'
  end

  def index
    @cars = Car.all
    @user = User.find(session[:user_id])
  end

  private

  def validate_session_admin
    @user = User.find(session[:user_id])
    if @user.role != 'admin'
      redirect_to '/'
      session[:user_id] = nil
    end
  end

  def validate_session
    @user = User.find(session[:user_id])
    if @user.nil?
      redirect_to '/'
      session[:user_id] = nil
    end
  end

  def load_car
    @car = Car.find(params[:id])
  end

  def car_params
    params.require(:car).permit(:name, :status, :price, :dealer_ship_id)
  end

end
