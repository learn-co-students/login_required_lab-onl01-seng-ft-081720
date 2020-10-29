class SecretsController < ApplicationController
  
  def new
  
  end 


  def show
    if current_user
      secret = Secret.find_by(params[:id])
    end

  end

end
