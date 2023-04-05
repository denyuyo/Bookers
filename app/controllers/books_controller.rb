class BooksController < ApplicationController
  before_action :set_book, only: %i[ show edit update destroy ]

  def index
    @books = Book.all
    @book = Book.new
  end

  def show
  end

  def edit
     @book = Book.find(params[:id])
  end
  
  def create
    book = Book.new(book_params)
    book.save
    redirect_to '/books'
  end

  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to books_path(book.id)  
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to '/books'
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
