class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
    @authors = Author.all
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to @book
    else
      render :new, status: :unprocessable_entity
    end
  end

  def list
    books = Book.includes(:author).order("#{params[:column]} #{params[:direction]}")
    render(partial: 'books_table', locals: { books: books })
  end

  private
    def book_params
      params.require(:book).permit(:title, :author_id, :genre, :pages)
    end
end
