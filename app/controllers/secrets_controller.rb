class SecretsController < ApplicationController
  
  def new
  
  end 


  def show
    if current_user
      session
    else
      redirect_to '/new'
    end

  end

end
