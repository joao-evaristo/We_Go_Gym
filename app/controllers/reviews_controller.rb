class ReviewsController < ApplicationController
  before_action :find_academia
  before_action :require_user_logged_in!
  before_action :set_review, only: [:edit, :update, :destroy]
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.academium_id = @academium.id
    @review.user_id = Current.user.id
    if @review.save
      redirect_to @academium
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @review.update(review_params)
      redirect_to @academium
    else
      render 'edit'
    end
  end

  def destroy
    @review.destroy
    redirect_to @academium
  end

  private
    def review_params
      params.require(:review).permit(:rating, :comment)
    end

    def find_academia
      @academium = Academium.find(params[:academium_id])
    end

    def set_review
      @review = Review.find(params[:id])
    end
end
