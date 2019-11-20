class SessionsController < ApplicationController
  def new
    # if session[:name] == nil
    #   # Login
    # else
    #   # Logout
    # end

    # If the user is not logged in, the page should show them a login link.
    # If the user is logged in, the page should say, "hi, #{name}", and provide a logout link.
  end

  def create
    # if session[:name] == nil
    #   redirect_to :create
    # end

    # if session[:name] == nil || session[:name] == ''
    #   session[:name] = params[:name]
    #   redirect_to '/login'
    # end
    # redirect_to '/'

    # {"utf8"=>"✓", "authenticity_token"=>"WIZ7WISyHxnYkh35tYJNewuK0WQvN1RIKyAf+0Lc9KzqjohoBN5yy8eOBRwv9LoKLRWxc8wkplX+fvnWK9dxcA==", "name"=>"", "method"=>"post"}
    # raise params.inspect

    # if params[:name] == ""
    #   redirect_to '/login'
    # else
    #   session[:name] = params[:name]
    #   redirect_to '/'
    # end

    # if params[:name].empty?
    #   redirect_to '/login'
    # else
    #   session[:name] = params[:name]
    #   redirect_to '/'
    # end

    # if !params[:name] == nil || !params[:name] == ""
    #   session[:name] = params[:name]
    #   render :index
    # else
    #     redirect_to '/login'
    #     # redirect_to 'sessions#new'
    # end

    if params[:name]
      if params[:name] == ""
         redirect_to login_path
      else
        session[:name] = params[:name]
        redirect_to root_path
      end
    else
      redirect_to login_path
    end
  end

  def destroy
    session.delete :name
    redirect_to '/login'
  end
end
