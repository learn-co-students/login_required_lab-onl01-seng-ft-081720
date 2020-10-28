require 'pry'

class SessionsController < ApplicationController
  # before_action :require_login

  
  def new
  end

  def create
    return redirect_to(controller: 'sessions', action: 'new') if params[:name] == ""
    session[:name] = params[:name]
    redirect_to controller: 'application', action: 'home'
  end

  def destroy
    if session[:name]
      session.delete :name
    end
  end

end
