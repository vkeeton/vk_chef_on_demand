class BookingsController < ApplicationController
  def index
  end

  def new
    @offer = Offer.find(params[:offer_id])
    @booking = Booking.new
    authorize @booking
    authorize @offer
  end

  def create
    @offer = Offer.find(params[:offer_id])
    @booking = Booking.new(booking_params)
    @booking.offer = @offer
    @booking.user = current_user
    if @booking.save
      redirect_to offer_path(@offer)
    else
      render :new
    end
    authorize @booking
    authorize @offer
  end
end

private

def booking_params
  params.require(:booking).permit(:offer_id, :user_id, :service_date, :meals_quantity, :user_comment, :cook_at_home)
end
