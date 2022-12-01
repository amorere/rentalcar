class Car < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many_attached :photos

  # validates that the car model is not empy
  validates :model, :daily_price, :brand, :kms, :year, :plate, :color, :capacity, :load, :transmission, :technical_approval, :insurance, :performance, presence: true
end
