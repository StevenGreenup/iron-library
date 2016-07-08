class Api::CheckoutsController < ApplicationController

  protect_from_forgery with: :null_session


    def create
      @checkout = Checkout.new
      @checkout.user_id = params[:checkout][:user_id]
      @checkout.book_id = params[:checkout][:book_id]
      if @checkout.save
        @checkout.book.update available: false
        render :checkout
      else
        render json: @checkout.errors, status:422
      end

    end

    def checkin
      @checkout = Checkout.find_by book_id: params[:book_id], checked_out: true
      if @checkout.nil?
        render json: @checkout.errors, status:422
      else
        @checkout.book.update available: true
        @checkout.update checked_out: false
        render :checkin
      end
    end




end
