class OffersController < ApplicationController
  def index
    if params[:cuisine]
      @offers = policy_scope(Offer).where(cuisine: params[:cuisine])
    else
      @offers = policy_scope(Offer).all
    end
  end

  def show
    @offer = Offer.find(params[:id])
    @booking = Booking.new
    authorize @offer
  end
end
