class SessionsController < ApplicationController
  def new
  end

  def create
    u = User.find_by_name(params[:name])

    if u && u.authenticate(params[:password])
      session[:username] = params[:name]
      redirect_to root_url, notice: "successfully signed in as #{session[:username]}"
    else
      redirect_to sign_in_url, notice: "invalid username or password"
    end

  end

  def destroy
    reset_session
    redirect_to sign_in_url, notice: "successfully signed out"
  end


end
