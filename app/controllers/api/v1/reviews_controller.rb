class Api::V1::ReviewsController < ApplicationController

  def index
    @reviews = Review.all
    render json:@reviews

  end

  def create
    @review = Review.new(review_params)
    if @review.save
      render json:@review
    else
      render json: {error: 'Error creating review'}
    end
  end

  def show
    @review = Review.find(params[:id])
    render json: @review
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
  end

  private
    def review_params
      params.require(:body).permit(:star_rating, :datetime, :likes)
    end

end
