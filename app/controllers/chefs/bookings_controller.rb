class Chefs::BookingsController < ApplicationController

  def index
    @bookings = current_user.bookings_as_chef
    policy_scope(Booking)
    # authorize([:chef, @booking])
  end

  # def update
  #   @booking = Booking.find(params[:id])
  #   authorize @booking
  #   @booking.update(booking_params)

  #   redirect_to chefs_bookings_path
  # end

  private

  def set_offer
    @offer = Offer.find(params[:offer_id])
  end

  def booking_params
    params.require(:booking).permit(:offer_id, :user_id, :service_date, :meals_quantity, :user_comment, :cook_at_home, :status)
  end

end
