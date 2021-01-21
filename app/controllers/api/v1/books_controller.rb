class Api::V1::BooksController < ApplicationController

  def index
    @books = Book.all
    render json:@books

  end

  def create
    @book = Book.new(book_params)
    if @book.save
      render json:@book
    else
      render json: {error: 'Error creating book'}
    end
  end

  def show
    @book = Book.find(params[:id])
    render json: @book
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
  end

  private
    def book_params
      params.require(:title).permit(:author, :average_stars, :link, :genre)
    end



end
