class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.username = params[:user][:username]
    @user.password = params[:user][:password]
    @user.password_confirmation = params[:user][:password_confirmation]
    if @user.save
      session[:username] = @user.username

      redirect_to root_path, notice: "Welcome to The Book Emporium, #{@user.username}!"
    else
      render :new
    end
  end
end
