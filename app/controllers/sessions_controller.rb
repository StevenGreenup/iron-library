class SessionsController < ApplicationController

  def new
  end

  def create
    username = params[:username]
    password = params[:password]

    user = User.find_by username: params[:username]
    if user && user.authenticate(params[:password])
      session[:username] = username
      redirect_to root_path, notice: "Welcome back, #{user.username}!"
    else
      flash.now[:notice] = "Username/Password does not match."
      render :new
    end
  end

  def delete
    session.delete :username
    redirect_to root_path, notice: "Signed out!"
  end
end
