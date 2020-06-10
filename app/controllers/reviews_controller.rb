class ReviewsController < ApplicationController

 def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(the_reviews_strong_params)
    @review.restaurant_id =  @restaurant.id

    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end


  private
  def the_reviews_strong_params
    params.require(:review).permit(:content)
  end
end
