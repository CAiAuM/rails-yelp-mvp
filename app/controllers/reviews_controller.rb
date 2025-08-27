class ReviewsController < ApplicationController
  before_action :set_restaurant, only: [:create]
  before_action :set_review, only: [:edit, :update, :destroy]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render "restaurants/show", status: :unprocessable_content
    end
  end

  def edit
  end

  def update
    @review.update(review_params)
    redirect_to restaurant_path(@restaurant)
  end

  def destroy
    @review.destroy
    redirect_to reviews_path, status: :see_other
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def set_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
