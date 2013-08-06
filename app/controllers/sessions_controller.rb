class SessionsController < ApplicationController
  def new
  end

  def create
    if User.find_by_name(params[:name])
      session[:username] = params[:name]
      redirect_to root_url, notice: "successfully signed in as #{session[:username]}"
    else
      redirect_to sign_in_url, notice: "<i></i>nvalid username"
    end

  end

  def destroy
    reset_session
    redirect_to sign_in_url, notice: "successfully signed out"
  end
end
