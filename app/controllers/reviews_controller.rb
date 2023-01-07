class ReviewsController < ApplicationController
  before_action :find_academia
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.academium_id = @academium.id
    @review.user_id = Current.user.id
    if @review.save
      redirect_to academia_path(@academium)
    else
      render new
    end
  end
  private
  def review_params
    params.require(:review).permit(:rating, :comment)
  end

  def find_academia
    @academium = Academium.find(params[:academium_id])
  end
end
