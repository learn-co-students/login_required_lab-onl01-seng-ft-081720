class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in

  protect_from_forgery with: :exception

  def current_user
    if session[:name]
      session[:name]
    elsif
      session[:name].nil?
    end
  end

  def logged_in
    current_user 
  end

end
