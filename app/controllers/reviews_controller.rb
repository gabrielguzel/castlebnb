class ReviewsController < ApplicationController
    def create
        @review = review.new(review_params)
        if @review.save
          redirect_to review_path(@review)
        else
          render 'new'
        end
    end

    def new
        @review = Reviews.new
    end

  private

    def review_params
        params.require(:review).permit(:stars, :description, :castle, :user)
        end
    end
end

