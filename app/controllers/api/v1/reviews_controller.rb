class Api::V1::ReviewsController < ApplicationController

before_action :set_book


  def index
    @reviews = @book.reviews
    render json: @reviews
  end


  def show
    @review = @book.reviews.find_by[id: params[:id]]
#    @review = Review.find(params[:id])
    render json: @review
  end

  def create
    @review = @book.reviews.new(review_params)
    @review.save
    render json: @book  
  end


  def destroy
    @review = @book.reviews.find_by[id: params[:id]]
    @review.destroy
  end

  private

    def set_book
      @book = Book.find(params[:book_id])
    end

    def review_params
      params.require(:body, :book_id).permit(:star_rating, :datetime, :likes)
    end

end
