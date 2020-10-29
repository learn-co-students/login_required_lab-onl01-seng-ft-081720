class SecretsController < ApplicationController
  before_action :require_login

  def show
    render :home
  end

  private

  def require_login
    if !session.include? :name
      redirect_to "/login"
    end
  end
end
