class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    book_params = params.require(:book).permit(:title, :year, :cover_img, :desc, :pages, :isbn, :author_id)

    @book = Book.new(book_params)

    if @book.save
       redirect_to @book
    else
       render 'new'
    end
  end
end
