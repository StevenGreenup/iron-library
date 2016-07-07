class CheckoutsController < ApplicationController

  def new
    @checkout = Checkout.new
    @checkout.user_id = params[:user_id]
    @checkout.book_id = params[:book_id]
  end

  def create
    @checkout = Checkout.new
    @checkout.user_id = params[:checkout][:user_id]
    @checkout.book_id = params[:checkout][:book_id]
    if @checkout.save
      @checkout.book.update available: false
      redirect_to root_path
    else
      render :new
    end

  end

  def checkin
    @checkout = Checkout.find(params[:id])
    @checkout.update checked_out: false
    redirect_to root_path
  end

end
