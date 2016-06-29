class BooksController < ApplicationController

  before_action except: [:show, :index] do
    if session[:username].nil?
      redirect_to sign_in_path, notice: "You must sign in!"
    end
  end

  def index
    @books = Book.all
    @authors = Author.all

    # @agent = Mechanize.new
    # @page = @agent.get('http://www.amazon.com/gp/bestsellers/2015/books/')
    # @images = @page.search("#specific img")
    #
    # <% @page.search('.zg_itemWrapper .zg_image .zg_itemImageImmersion a alt').each do |photo| %>
    # <%= photo.text %><br>
    # <% end %>

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

end
