class Api::V1::ReviewsController < ApplicationController

before_action :set_book


  def index
    @reviews = @book.reviews
    render json: @reviews
  end

  def create

  end

  def show

  end

  def destroy
    
  end

  private

    def set_book
      @book = Book.find(params[:book_id])
    end

    def review_params
      params.require(:body, :book_id).permit(:star_rating, :datetime, :likes)
    end

end
