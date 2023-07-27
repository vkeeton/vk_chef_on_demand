class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :offers
  has_many :bookings
  has_many :bookings_as_chef, through: :offers, source: :bookings
  has_one_attached :photo

  validates :first_name, :last_name, :user_type, presence: true
end
