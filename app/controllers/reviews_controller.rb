class ReviewsController < ApplicationController

  def new
    @review = Review.new
  end

  def create
    @politician = Politician.find(params[:politician_id])
    @review = Review.new(review_params)
    @review.politician = @politician
    if @review.save
      redirect_to politician_path(@politician)
    else
      render 'politicians/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
