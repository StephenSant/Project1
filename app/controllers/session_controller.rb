class SessionController < ApplicationController
  def new
  end
  def create
    user = User.find_by :email => params[:email]
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      session[:order_id] = user.id
      session[:cart_id] = user.id
      redirect_to root_path
    else
      redirect_to login_path
    end
  end
  def destroy
    session[:user_id] = nil
    session[:order_id] = nil
    session[:cart_id] = nil
    redirect_to login_path
  end
end
