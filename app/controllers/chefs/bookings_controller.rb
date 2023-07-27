class Chefs::BookingsController < ApplicationController

  def index
    policy_scope([:chefs, Booking])
    # authorize([:chef, @booking])
  end
end
