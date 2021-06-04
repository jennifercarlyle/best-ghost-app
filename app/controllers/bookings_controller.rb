class BookingsController < ApplicationController
  before_action :set_ghost

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.ghost = @ghost
    @booking.total_price = @ghost.rate * ((@booking.end_date - @booking.start_date).to_i)
    if @booking.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def set_ghost
    @ghost = Ghost.find(params[:ghost_id])
  end
end
