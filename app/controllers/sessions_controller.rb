class SessionsController < ApplicationController
  def new
 
  end

  def create
    # byebug
    if params[:name].nil? || params[:name].empty?
      # byebug
      redirect_to :login
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    if !session[:name].nil?
      session.delete :name
    end
    redirect_to '/'
  end
end