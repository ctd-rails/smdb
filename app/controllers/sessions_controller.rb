class SessionsController < ApplicationController
  def new
  end

  def create
    session[:username] = params[:name]
    redirect_to root_url, notice: "successfully signed in as #{session[:username]}"
  end

  def destroy
    reset_session
    redirect_to sign_in_url, notice: "successfully signed out"
  end
end
