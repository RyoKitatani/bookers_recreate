class BooksController < ApplicationController
  def index
    @book = Book.new
    @books = Book.all
  end

  def show
    @book = Book.new
    @book = Book.find(params[:id])
  end

  def create
   @book = Book.new(book_params) 
   @book.save
   redirect_to book_path(@book)
  end

  def edit
    @book = Book.find(params[:id])
  end
  
  def update
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
