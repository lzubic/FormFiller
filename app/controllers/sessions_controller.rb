class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_email(params[:session][:email])
    if user.present? && user.authenticate(params[:session][:password])
      log_in(user)
    else
      flash.now[:danger] = 'Your email or password is incorrect'
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
