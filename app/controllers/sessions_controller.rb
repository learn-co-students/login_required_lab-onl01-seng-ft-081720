class SessionsController < ApplicationController 


    def create
        # session[:name] = params[:name]
        if params[:name].empty?
            redirect_to '/login'
        else session[:name] = params[:name]
            redirect_to 'application#home'     
        end
    end

    def destroy 
        if session[:name]
        session.delete :name 
        end
    end 
end 