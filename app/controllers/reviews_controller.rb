class ReviewsController < ApplicationController
  before_action :set_booking

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.booking = @booking
    if @review.save!
      redirect_to ghost_path(@booking.ghost)
    else
      render :new
    end
  end

  private
  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def set_booking
    @booking = Booking.find(params[:booking_id])
  end
end
