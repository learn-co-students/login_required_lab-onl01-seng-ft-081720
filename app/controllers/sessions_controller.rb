class SessionsController < ApplicationController
    def new
        redirect_to '/login'
    end


    def create
        if !params[:name] || params[:name] == ""
            redirect_to '/login'
        else
            session[:name] = params[:name]
            redirect_to '/'
        end
    end
    
    

    def destroy
        session.delete :name
        redirect_to '/l'
        # if !session[:name] == ""
        #     session.destroy :name
        #     redirect_to '/'
        # end
    end


end
