class BooksController < ApplicationController
  def index
    @books = Book.all
    @book = Book.new
  end

  def show
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to books_path
  end

  def edit
  end

  def update
  end

  def destory
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
