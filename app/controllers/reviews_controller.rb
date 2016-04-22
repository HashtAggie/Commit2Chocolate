class ReviewsController < ApplicationController
  def index
    @review = Review.order(created_at: :desc)
  end

  def create
    review_params = params.require(:review).permit(:title, :content)

    @review = Review.new(title: review_params[:title], content: review_params[:content])

  end

  def user
    def user
      @user = User.find( params[:user_id] )

      @reviews = Review.where( user: @user ).order( created_at: :desc )
   end
  end
end
