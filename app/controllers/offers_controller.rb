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

  def new
    @offer = Offer.new
    authorize @offer
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    if @offer.save
      redirect_to offers_path
    else
      render :new
    end
    authorize @offer
  end
end

private

def offer_params
  params.require(:offer).permit(:user_id, :cuisine, :price)
end
