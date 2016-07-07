class BooksController < ApplicationController



  def index
    @books = Book.all
  end

  def show
    @book = Book.find_by id: params[:id]

  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new
    @book.author_id = params[:book][:author_id]
    @book.title = params[:book][:title]
    @book.photo_url = params[:book][:photo_url]
    @book.price_in_cents = params[:book][:price_in_cents]
    if @book.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @book = Book.find_by id: params[:id]
  end

  def update
    @book = Book.find_by id: params[:id]
    @book.author_id = params[:book][:author_id]
    @book.title = params[:book][:title]
    @book.photo_url = params[:book][:photo_url]
    @book.price_in_cents = params[:book][:price_in_cents]
    if @book.save
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    Book.find(params[:id]).destroy
    redirect_to root_path
  end

  def checkout
    @book = Book.find_by id: params[:id]
    # @book.update_attributes(available: false)
    # if @book.save
    #   redirect_to root_path
    # else
    #   flash[:notice] = "Book is not available"
    # end
  end

  def checkin
    @book = Book.find_by id: params[:id]
    # @book.update_attributes(available: false)
    # if @book.save
    #   redirect_to root_path
    # else
    #   flash[:notice] = "Book is not available"
    # end
  end


end
