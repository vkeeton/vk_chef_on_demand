class Chefs::BookingsController < ApplicationController

  def index
    @bookings = current_user.bookings_as_chef
    policy_scope(Booking)
    # authorize([:chef, @booking])
  end
end
