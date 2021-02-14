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
    review = Review.find(params["id"])
    book = Book.find(review.book_id)
    review.destroy
    render json: book
  end

  private

    def set_book
      @book = Book.find(params[:book_id])
    end

    def review_params
      params.permit(:body, :book_id, :star_rating, :datetime, :likes)
    end

end
