class SessionsController < ApplicationController
  skip_before_action :authorize
  def new
  end

  def create
    user = User.find_by(name: params[:name])

    if user.try(:authenticate, params[:password]) #the try method checks to see if a variable has a value of nil befoer trying to call the method
      session[:user_id] = user.id
      redirect_to landing_url
    else
      redirect_to login_url, alert: "Invalid username and/or password"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out"
  end
end
