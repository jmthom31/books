class BooksController < ApplicationController
  def index
    @books = Book.all.sort_by(&:name)
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to books_path, notice: 'Book added'
    else
      render :new
    end
  end

  private

  def book_params
    params.require(:book).permit(:name, :author, :recommended_by, :complete)
  end
end
