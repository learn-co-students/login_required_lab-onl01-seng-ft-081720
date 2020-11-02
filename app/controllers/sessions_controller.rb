class SessionsController < ApplicationController

  def new

  end

  def create
    return redirect_to controller: 'sessions', action: 'new' if !params[:name] || params[:name].empty?
    session[:name] = params[:name]
    # redirect_to '/'
    #calls on the controller application and refers to the method welcome
    # which will redirect you to the login new if the params are not correct.
    redirect_to controller: 'application', action: 'welcome'
  end

  def destroy
    session.delete :name
  end

end
