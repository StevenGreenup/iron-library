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
    @checkout = Checkout.find_by book_id: params[:book_id], checked_out: true
    # SELECT  "checkouts".* FROM "checkouts" WHERE "checkouts"."book_id" = $1 AND "checkouts"."checked_out" = $2 LIMIT 1  [["book_id", 1], ["checked_out", "t"]]
    if @checkout.nil?
      redirect_to root_path, notice: "Book not found or not available"
    else
      @checkout.book.update available: true
      @checkout.update checked_out: false
      redirect_to root_path
    end
  end

end
