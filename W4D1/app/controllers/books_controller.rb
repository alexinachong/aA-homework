class BooksController < ApplicationController
  def index
    # your code here
    @books = Book.all 
    render :index
  end

  def new
    # your code here
    render :new 
  end

  def create
    # your code here
    book = Book.new(book_params)
    
    if book.save 
      redirect_to books_url
    end 
  end

  def destroy
    # your code here
    book = Book.find_by(id: params[:id])
    
    book.destroy 
    redirect_to books_url
  end

  private
  def book_params
    params.require(:book).permit(:title, :author)
  end
end
