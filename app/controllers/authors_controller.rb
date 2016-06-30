class AuthorsController < ApplicationController

  before_action except: [:show] do
    if session[:username].nil?
      redirect_to sign_in_path, notice: "You must sign in!"
    end
  end

  def show
    @author = Author.find_by id: params[:id]
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new
    @author.first_name = params[:author][:first_name]
    @author.last_name = params[:author][:last_name]
    @author.Bio = params[:author][:Bio]
    if @author.save
      redirect_to root_path
    else
      render :new
    end

  end

end
