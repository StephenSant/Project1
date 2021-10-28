class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :fetch_user, :current_cart

  private
  def fetch_user
      @current_user = User.find_by :id => session[:user_id] if session[:user_id].present?
      session[:user_id] = nil unless @current_user.present?
  end

  def check_for_login
      redirect_to login_path unless @current_user.present?
  end

  def check_for_admin
      redirect_to login_path unless (@current_user.present? && @current_user.admin?)
  end

  def current_cart
    @current_cart = Cart.find_by :id => session[:cart_id] if session[:cart_id].present?
    session[:cart_id] = nil unless @current_cart.present?

    if session[:cart_id] == nil
      @current_cart = Cart.create
      session[:cart_id] = @current_cart.id
    end
  end
end
