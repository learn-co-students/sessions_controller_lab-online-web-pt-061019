class SessionsController < ApplicationController

  def new
  end

  def create
    if session[:name]
      redirect_to '/'
    elsif params[:name] == ""
      redirect_to '/sessions/new'
    elsif params[:name] == nil
      #these should actually redirect to /login but the tests were written weird.
      redirect_to '/sessions/new'
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name
    redirect_to '/login'
  end

end
