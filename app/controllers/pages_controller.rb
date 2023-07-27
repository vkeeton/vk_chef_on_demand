class PagesController < ApplicationController
  def home
    @offer = Offer.all
  end
end
