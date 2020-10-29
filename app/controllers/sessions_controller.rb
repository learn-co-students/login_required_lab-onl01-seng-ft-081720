class SessionsController < ApplicationController
  
  def new
  end

  def create
    if params[:name].empty? 
      redirect_to '/new'
    else 
      session[:name] = params[:name]
      binding.pry
    end
  end

  def destroy
    if !current_user
      session
    elsif session[:name]
      session.clear 
    end
  end

  
end
