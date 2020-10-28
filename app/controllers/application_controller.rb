class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :require_login

  def home

  end

  def current_user
    @user ||= session[:name]
  end

  private

  def require_login
    # return head(:forbidden) unless session.include? :user_id
    if !current_user
      redirect_to "/login"
    end
  end

end
