class SessionsController < ApplicationController
  def new
  end

  def create
    name = params[:name]
    if name.blank? || name.nil?
      redirect_to controller: 'sessions', action: 'new'
    else
      session[:name] = name
      redirect_to '/'  
    end
  end

  def destroy
    session.delete :name if session[:name]
    redirect_to '/'
  end

end
