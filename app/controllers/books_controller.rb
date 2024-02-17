class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def list
    books = Book.includes(:author).order("#{params[:column]} #{params[:direction]}")
    render(partial: 'books_table', locals: { books: books })
  end
end
