class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :offer

  def pending?
    status.nil?
  end

  def accepted?
    status == true
  end

  def denied?
    status == false
  end
end
