class BookingsController < ApplicationController
  before_action :set_offer, only: [:new, :create]

  def index
    @bookings = policy_scope(Booking)
  end

  def new
    authorize @offer
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.offer = @offer
    @booking.user = current_user
    if @offer.user == current_user
      redirect_to offer_path(@offer), alert: "You can't book your own offer"
    elsif @booking.save
      redirect_to bookings_path
    else
      render :new
    end
    authorize @booking
    authorize @offer
  end

  def destroy
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.destroy!
    redirect_to bookings_path, status: :see_other
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  private

  def set_offer
    @offer = Offer.find(params[:offer_id])
  end

  def booking_params
    params.require(:booking).permit(:offer_id, :user_id, :service_date, :meals_quantity, :user_comment, :cook_at_home)
  end
end
