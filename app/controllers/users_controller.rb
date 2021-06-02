class UsersController < ApplicationController
  def show
    set_user
    @future_bookings = Booking.where("end_date < ? ", Date.today)
    @completed_bookings = Booking.where("end_date >= ? ", Date.today)
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
