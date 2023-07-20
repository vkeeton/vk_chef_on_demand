class OffersController < ApplicationController
  def index
    @offers = Offer.all
  end

  def show
    @offers = Offer.find(params[:id])
  end
end
