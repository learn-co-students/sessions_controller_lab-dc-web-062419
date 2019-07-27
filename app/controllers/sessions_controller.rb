class SessionsController < ApplicationController
  def new
  end

  def create
    if session_params[:name] && !session_params[:name].empty?
      session[:name] = session_params[:name]
      redirect_to '/'
    else
      redirect_to '/login'
    end
  end

  def destroy
    session.delete :name
    redirect_to '/login'
  end

  private

  def session_params
    params.permit(:name)
  end
end
