class CarsController < ApplicationController
    before_action :load_car, only: %i(edit update)

    def index; end

    def new
        @car = Car.new
    end

    def edit; end

    def update; end

    def create; end

    def destroy; end

    private

    def load_car
        @car = Car.find(params[:id])
    end

    def invite_params
        params.require(:invite).permit(:first_name, :last_name, :email, :relationship).merge(site_id: Current.site.id)
    end
end