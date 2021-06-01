class BookingsController < ApplicationController
  before_action :set_ghost

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.ghost = @ghost
    if @booking.save
      redirect_to ghost_path(@ghost)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :total_price)
  end

  def set_ghost
    @ghost = Ghost.find(params[:ghost_id])
  end
end
