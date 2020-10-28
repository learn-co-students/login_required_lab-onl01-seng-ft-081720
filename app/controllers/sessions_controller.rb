class SessionsController < ApplicationController 
    def create
        if params[:name] == ''
            redirect_to '/new'
        else   
            session[:name] = params[:name]
        end
    end

    def destroy
        session.clear
    end
end