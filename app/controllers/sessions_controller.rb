class SessionsController < ApplicationController

    def new

    end

    def create
        if params[:name].blank?
            redirect_to '/login'
        else
            session[:name] = params[:name]
        end
    end

    def destroy
        reset_session
    end

end