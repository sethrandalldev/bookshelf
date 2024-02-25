class AuthorsController < ApplicationController
  def index
  end

  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)

    if @author.save
      redirect_to new_book_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    def author_params
      params.require(:author).permit(:first_name, :last_name)
    end
end
