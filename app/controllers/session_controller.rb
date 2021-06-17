class SessionController < ApplicationController
    def create
        @user = User.find_by(name: params[:name])
        if @user
           session[:user_id] = @user.id
           redirect_to cars_path
        else
           redirect_to '/'
        end   
    end

    def destroy
        session[:user_id] = nil
        redirect_to '/'
    end
end