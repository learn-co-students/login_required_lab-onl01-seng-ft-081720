class SessionsController < ApplicationController
    skip_before_action :require_login
    
    def new
    end

    def create
        if params[:name] && !params[:name].empty?
            session[:name] = params[:name]
            redirect_to 'application#home'
        else
            redirect_to "/login"
        end
    end

    def destroy
        session.delete :name
    end
end