class SessionsController < ApplicationController
  def new
    # if session[:name].present?
    #   redirect_to '/'
    # end
  end

  def create
    # binding.pry
    name = params[:name]
    if name.nil? || name.blank?
      redirect_to '/login'
    else
      session[:name] = name
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name if session[:name]
    redirect_to '/login'
  end
end
