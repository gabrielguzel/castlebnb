class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end
  
  def create
    @review = Review.new(params_review)
    @castle = Castle.find(params[:castle_id])
    @review.castle = @castle
    if @review.save
      flash[:success] = "Review successfully created"
      redirect_to @review
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  private

  def params_review
    params.require(:review).permit(:stars,:description)
  end
  
end
