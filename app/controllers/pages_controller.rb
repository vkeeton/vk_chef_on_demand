class PagesController < ApplicationController
  def home
    @offers = Offer.select('DISTINCT ON (cuisine) *')
  end
end
