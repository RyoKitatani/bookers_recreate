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
     if @book.save
        flash[:success] = "Book was created book successfully"
        redirect_to book_path(@book)
     end
  end

  def edit
    @book = Book.find(params[:id])
  end
  
  def update
   @book = Book.find(params[:id])
     if @book.update(book_params)
      flash[:success] = "Book was successfully updated."
      redirect_to book_path
     end
  end
  
  def destroy
    @book = Book.find(params[:id])
    if @book.destroy
       flash[:success] = "Book was successfully deleted"
       redirect_to books_path
    end
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body, :image)
  end

end
